defmodule Website.Subscriber do
  use Website.Web, :model

  schema "subscribers" do
    field :first_name, :string
    field :last_name, :string
    field :email, :string

    timestamps
  end

  @required_fields ~w(first_name last_name email)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ %{}) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> validate_format(:email, ~r/\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i)
    |> unique_constraint(:email, on: Website.Repo, downcase: true)
  end
end

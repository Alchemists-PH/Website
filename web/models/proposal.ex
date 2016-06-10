defmodule Website.Proposal do
  use Website.Web, :model

  schema "proposals" do
    field :name, :string
    field :email, :string
    field :title, :string
    field :description, :string
    field :duration, :string
    field :bio, :string
    field :extra_info, :string

    timestamps
  end

  @required_fields ~w(name email title description bio extra_info)
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
  end
end

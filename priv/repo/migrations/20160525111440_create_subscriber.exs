defmodule Website.Repo.Migrations.CreateSubscriber do
  use Ecto.Migration

  def change do
    create table(:subscribers) do
      add :first_name, :string
      add :last_name, :string
      add :email, :string

      timestamps
    end

  end
end

defmodule Website.Repo.Migrations.CreateProposal do
  use Ecto.Migration

  def change do
    create table(:proposals) do
      add :name, :string
      add :email, :string
      add :title, :string
      add :description, :text
      add :duration, :string
      add :bio, :text
      add :extra_info, :text

      timestamps
    end

  end
end

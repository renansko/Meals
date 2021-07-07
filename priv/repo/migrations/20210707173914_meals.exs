defmodule Snack.Repo.Migrations.Meals do
  use Ecto.Migration

  def change do
    create table :meals do
      add :descricao, :string
      add :data, :utc_datetime
      add :calorias, :string

      timestamps()
    end
  end
end

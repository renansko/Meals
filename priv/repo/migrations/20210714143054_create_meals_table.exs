defmodule Snack.Repo.Migrations.CreateMealsTable do
  use Ecto.Migration

  def change do
    create table(:meals) do
      add :descricao, :string
      add :data, :utc_datetime
      add :calorias, :string
      add :user_id, references(:users, type: :binary_id)

      timestamps()
    end
  end
end

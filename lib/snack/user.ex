defmodule Snack.User do
  use Ecto.Schema
  import Ecto.Changeset

  alias Snack.Meal

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  @fields [:name, :cpf, :email]

  @derive {Jason.Encoder, only: [:name, :cpf, :email]}

  schema "users" do
    field :name, :string
    field :cpf, :string
    field :email, :string


    timestamps()

    has_many :meals, Meal
  end

  def changeset(params)do
    %__MODULE__{}
    |> cast(params, @fields)
    |> validate_required(@fields)
    |> validate_length(:cpf, min: 11)
    |> unique_constraint(:email)
    |> unique_constraint(:cpf)
    |> validate_format(:email, ~r/@/)
  end
end

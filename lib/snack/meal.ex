defmodule Snack.Meal do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}

  @fields [:descricao, :data, :calorias]

  @derive {Jason.Encoder, only: [:id, :data, :calorias,:descricao]}

  schema "meals" do

    field :descricao, :string
    field :data, :utc_datetime
    field :calorias, :string

    timestamps()
  end

  def changeset(params) do
    %__MODULE__{}
    |> cast(params, @fields)
    |> validate_required(@fields)
  end




end

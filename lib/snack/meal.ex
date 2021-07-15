defmodule Snack.Meal do
  use Ecto.Schema
  import Ecto.Changeset

  alias Snack.User

  @primary_key {:id, :binary_id, autogenerate: true}

  @foreign_key_type :binary_id

  @fields [:descricao, :data, :calorias, :user_id]

  @derive {Jason.Encoder, only: [:id, :data, :calorias,:descricao]}

  schema "meals" do

    field :descricao, :string
    field :data, :utc_datetime
    field :calorias, :string


    belongs_to :user, User
    timestamps()
  end

  def changeset(struct \\ %__MODULE__{}, params) do
    struct
    |> cast(params, @fields)
    |> validate_required(@fields)
  end


end

defmodule Snack do
  alias Snack.Meals.Create, as: CreateSnack
  alias Snack.Meals.Delete, as: DeleteSnack
  alias Snack.Meals.Get, as: GetSnack
  alias Snack.Meals.Update, as: UpdateSnack

 defdelegate create_snack(params), to: CreateSnack,  as: :call
 defdelegate delete_snack(id), to: DeleteSnack,  as: :call
 defdelegate get_snack(id), to: GetSnack,  as: :by_id
 defdelegate update_snack(params), to: UpdateSnack,  as: :call
end

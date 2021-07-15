defmodule Snack do
  alias Snack.Users.Create, as: CreateUser
  alias Snack.Users.Delete, as: DeleteUser
  alias Snack.Users.Get, as: GetUser
  alias Snack.Users.Update, as: UpdateUser

  alias Snack.Meals.Create, as: CreateSnack
  alias Snack.Meals.Delete, as: DeleteSnack
  alias Snack.Meals.Get, as: GetSnack
  alias Snack.Meals.Update, as: UpdateSnack

  defdelegate create_user(params), to: CreateUser,  as: :call
  defdelegate delete_user(id), to: DeleteUser,  as: :call
  defdelegate get_user(id), to: GetUser,  as: :by_id
  defdelegate update_user(params), to: UpdateUser,  as: :call


 defdelegate create_snack(params), to: CreateSnack,  as: :call
 defdelegate delete_snack(id), to: DeleteSnack,  as: :call
 defdelegate get_snack(id), to: GetSnack,  as: :by_id
 defdelegate update_snack(params), to: UpdateSnack,  as: :call


end

defmodule Snack do
  alias Snack.Meals.Create, as: CreateSnack

 defdelegate create_snack(params), to: CreateSnack,  as: :call
end

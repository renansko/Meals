# defmodule Snack.Meals.CreateTest do
#   use Snack.DataCase, async: true

#   import Snack.Factory

#   alias  Snack.Meals.Create
#   alias Snack.Meal
#   alias Ecto.Changeset

#   describe "call/1" do
#     test "When all params are valid return a Meal" do

#       params = build(:meals_params)

#       response = Create.call(params)

#       assert {:ok, %Meal{id: _id, calorias: "10kCal"}} = response
#     end

#   end
# end

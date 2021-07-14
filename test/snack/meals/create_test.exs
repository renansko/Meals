# defmodule Snack.Meals.CreateTest do
#   use Snack.DataCase, async: true

#   import Snack.Factory

<<<<<<< HEAD
#   alias  Snack.Meals.Create
#   alias Snack.Meal
#   alias Ecto.Changeset

#   describe "call/1" do
#     test "When all params are valid return a Meal" do

#       params = build(:meals_params)
=======
  alias Snack.Meals.Create
  alias Snack.{Meal, Error}

  describe "call/1" do
    test "When all params are valid return a Meal" do
      params = build(:meals_params)
>>>>>>> c90b91724265f8895544f3d7dcd1dc6bb47ddf29

#       response = Create.call(params)

<<<<<<< HEAD
#       assert {:ok, %Meal{id: _id, calorias: "10kCal"}} = response
#     end

#   end
# end
=======
      assert {:ok, %Meal{id: _id, calorias: "120kCal"}} = response
    end

    test "When there are invalid params, return a error" do
      params = build(:meals_params, %{calorias: ""})

      response = Create.call(params)

      expected_response = %{calorias: ["can't be blank"]}

      assert {:error, %Error{status: :bad_request, result: changeset}} = response
      assert errors_on(changeset) == expected_response
    end
  end
end
>>>>>>> c90b91724265f8895544f3d7dcd1dc6bb47ddf29

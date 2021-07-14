defmodule Snack.Meals.CreateTest do
  use Snack.DataCase, async: true

  import Snack.Factory

  alias Snack.Meals.Create
  alias Snack.{Meal, Error}

  describe "call/1" do
    test "When all params are valid return a Meal" do
      params = build(:meals_params)

      response = Create.call(params)

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

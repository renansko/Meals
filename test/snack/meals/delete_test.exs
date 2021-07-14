defmodule Snack.Meals.DeleteTest do
  use Snack.DataCase, async: true

  import Snack.Factory

  alias Snack.Meals.{Delete, Create}
  alias Snack.{Meal, Error}

  describe "delete/1" do
    test "When id is valid delete de meal" do
      params = build(:meals_params)

      {_ok, meal} = Create.call(params)

      response = Delete.call(meal.id)

      assert {:ok, %Meal{id: _id, calorias: "120kCal"}} = response
    end

    test "When there are invalid id, return a error" do
      params = build(:meals_params)

      {:ok, meal} = Create.call(params)

      response = Delete.call("153adc6b-9ae1-454c-93fb-4d249b38e853")

      assert {:error, %Snack.Error{result: "Meal not found", status: :not_found}} = response
    end
  end
end

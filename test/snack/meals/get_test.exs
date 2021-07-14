defmodule Snack.Meals.GetTest do
  use Snack.DataCase, async: true

  import Snack.Factory

  alias Snack.Meals.{Get, Create}
  alias Snack.{Meal, Error}
  alias Ecto.Changeset

  describe "by_id/1" do
    test "When id is valid return a meal" do
      params = build(:meals_params)

      {_ok, meal} = Create.call(params)

      response = Get.by_id(meal.id)

      assert {:ok, %Meal{id: _id, calorias: "120kCal"}} = response
    end

    test "When are invalid ID return an error" do
      params = build(:meals_params)

      {_ok, meal} = Create.call(params)

      response = Get.by_id("153adc6b-9ae1-454c-93fb-4d249b38e851")

      assert {:error, %Snack.Error{result: "Meal not found", status: :not_found}} = response
    end
  end
end

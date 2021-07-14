defmodule SnackWeb.Meals.UpdateTest do
  use Snack.DataCase, async: true
  import Snack.Factory

  alias Snack.{Meal, Error}
  alias Snack.Meals.{Update, Create}

  describe "call/1" do
    test "When id is invalid return an error" do
      params = build(:meals_params)

      {_ok, meal} = Create.call(params)

      response =
        Update.call(%{
          "id" => "5e363eea-8448-48a2-9f80-d539422022c4",
          "calorias" => "120kCal"
        })

      assert {:error, %Error{result: "Meal not found", status: :not_found}} = response
    end

    test "When all params are valid, return a updated meal" do
      params = build(:meals_params)

      {_ok, meal} = Create.call(params)

      response = Update.call(%{"id" => meal.id, "descricao" => "abacate"})

      assert {:ok, %Meal{descricao: "abacate"}} = response
    end
  end
end

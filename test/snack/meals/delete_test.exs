defmodule Snack.Meals.DeleteTest do
  use Snack.DataCase, async: true

  import Snack.Factory

  alias Snack.Meals.Delete
  alias Snack.{Meal, Error}
  alias Ecto.Changeset

  describe "delete/1" do
    test "When id is valid delete de meal" do
      id = "5e363eea-8448-48a2-9f80-d539422022c5"

      response = Delete.call(id)

      assert {:ok, %Meal{id: _id, calorias: "120kCal"}} = response
    end

    # test "When there are invalid params, return a error" do
    #   params = build(:meals_params, %{calorias: ""})

    #   response = Create.call(params)

    #   expected_response = %{calorias: ["can't be blank"]}

    #   assert {:error, %Error{status: :bad_request, result: changeset}} = response
    #   assert errors_on(changeset) == expected_response
    # end
  end
end

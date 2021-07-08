defmodule Snack.MealTest do
  use Snack.DataCase
  import Snack.Factory

  alias Snack.Meal
  alias Ecto.Changeset

  describe "changeset/1" do
    test "When all, params are valid return a Changeset" do

      params = build(:meals_params)

      response = Meal.changeset(params)

      assert %Changeset{changes: %{data: ~U[2018-11-15 10:00:00Z]}, valid?: true} = response
    end
  end
end

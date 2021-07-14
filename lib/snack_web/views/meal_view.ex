defmodule SnackWeb.MealView do
  use SnackWeb, :view

  alias Snack.Meal

  def render("create.json", %{snack: %Meal{}} = snack) do
    %{
      message: "Snack created!",
      snack: snack
    }
  end

  def render("meals.json", %{snack: %Meal{} = snack}), do: %{snack: snack}
end

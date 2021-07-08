defmodule SnackWeb.MealController do
  use SnackWeb, :controller

  alias Snack.Meal

  def create(conn, params) do
    with  {:ok, %Meal{} = meal} <- Snack.create_snack(params) do
      conn
      |> put_status(:created)
      |> render("create.json", meal: meal)
    end
  end
end

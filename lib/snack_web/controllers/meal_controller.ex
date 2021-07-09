defmodule SnackWeb.MealController do
  use SnackWeb, :controller

  alias Snack.Meal
  alias SnackWeb.FallbackController

  action_fallback  FallbackController

  def create(conn, params) do
    with  {:ok, %Meal{} = meal} <- Snack.create_snack(params) do
      conn
      |> put_status(:created)
      |> render("create.json", meal: meal)
    end
  end

  def delete(conn, %{"id" => id}) do
    with  {:ok, %Meal{}} <- Snack.delete_snack(id) do
      conn
      |> put_status(:no_content)
      |> text("")
    end
  end
  def show(conn, %{"id" => id}) do
    with  {:ok, %Meal{} = meal} <- Snack.get_snack(id) do
      conn
      |> put_status(:ok)
      |> render("meals.json", meal: meal)
    end

  end
  def update(conn, params) do
    with  {:ok, %Meal{} = meal} <- Snack.update_snack(params) do
      conn
      |> put_status(:created)
      |> render("meals.json", meal: meal)
    end
  end
end

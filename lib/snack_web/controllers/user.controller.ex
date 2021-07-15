defmodule SnackWeb.UserController do
  use SnackWeb, :controller

  alias Snack.User
  alias SnackWeb.FallbackController

  action_fallback  FallbackController

  def create(conn, params) do
    with  {:ok, %User{} = user} <- Snack.create_user(params) do
      conn
      |> put_status(:created)
      |> render("create.json", user: user)
    end
  end

  def delete(conn, %{"id" => id}) do
    with  {:ok, %User{}} <- Snack.delete_user(id) do
      conn
      |> put_status(:no_content)
      |> text("")
    end
  end
  def show(conn, %{"id" => id}) do
    with  {:ok, %User{} = user} <- Snack.get_user(id) do
      conn
      |> put_status(:ok)
      |> render("users.json", user: user)
    end

  end
  def update(conn, params) do
    with  {:ok, %User{} = user} <- Snack.update_user(params) do
      conn
      |> put_status(:created)
      |> render("users.json", user: user)
    end
  end
end

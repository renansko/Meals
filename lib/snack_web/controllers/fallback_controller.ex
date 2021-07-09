defmodule SnackWeb.FallbackController do
  use SnackWeb, :controller

  alias Snack.Error
  alias SnackWeb.ErrorView

  def call(conn, %Error{status: status, result: result}) do
    conn
    |> put_status(status)
    |> put_view(ErrorView)
    |> render("error.json", result: result)
  end
end

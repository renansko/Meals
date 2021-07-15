defmodule SnackWeb.UserView do
  use SnackWeb, :view

  alias Snack.User

  def render("create.json", %{user: %User{}} = user) do
    %{
      message: "Snack created!",
      user: user
    }
  end

  def render("users.json", %{user: %User{} = user}), do: %{user: user}
end

defmodule Snack.Users.Update do
  alias Snack.{Error, User, Repo}

  def call(%{"id" => id} = params) do
    case Repo.get(User, id) do
       nil -> {:error, Error.build_user_not_found_error()}
       user -> update_user(user, params)
    end
  end
  defp update_user(user, params) do
    user
    |> User.changeset(params)
    |> Repo.update()
  end
end

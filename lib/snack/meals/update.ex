defmodule Snack.Meals.Update do
  alias Snack.{Error, Meal, Repo}

  def call(%{"id" => id} = params) do
    case Repo.get(Meal, id) do
       nil -> {:error, Error.build_meal_not_found_error()}
       meal -> update_meal(meal, params)
    end
  end
  defp update_meal(user, params) do
    user
    |> Meal.changeset(params)
    |> Repo.update()
  end
end

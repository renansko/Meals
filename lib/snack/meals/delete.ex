defmodule Snack.Meals.Delete do
  alias Snack.{Error, Meal,Repo}

  def call(id) do
    case Repo.get(Meal, id) do
       nil -> {:error, Error.build_meal_not_found_error()}
       meal -> Repo.delete(meal)
    end
  end
end

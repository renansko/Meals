defmodule Snack.Meals.Get do
  alias Snack.{Error, Meal,Repo}

  def by_id(id) do
    case Repo.get(Meal, id) do
       nil -> {:error, Error.build_meal_not_found_error()}
       meal -> {:ok, meal}
    end
  end
end

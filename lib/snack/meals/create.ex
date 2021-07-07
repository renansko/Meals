defmodule Snack.Meals.Create do

  alias Snack.{Meal,Repo}

  def call(params) do
    params
    |> Meal.changeset()
    |> Repo.insert()
  end

end

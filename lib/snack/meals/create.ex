defmodule Snack.Meals.Create do
  #{descricao: "des",  data: ~N[2020-03-03 14:00:00], calorias: "a"}
  alias Snack.{Meal,Repo}

  def call(params) do
    params
    |> Meal.changeset()
    |> Repo.insert()
  end
end

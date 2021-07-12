defmodule Snack.Meals.Create do
  # {descricao: "des",  data: ~N[2020-03-03 14:00:00], calorias: "a"}
  alias Snack.{Meal, Repo, Error}

  def call(params) do
    params
    |> Meal.changeset()
    |> Repo.insert()
    |> handle_insert()
  end

  defp handle_insert({:ok, %Meal{}} = result), do: result

  defp handle_insert({:error, result}) do
    {:error, Error.build(:bad_request, result)}
  end
end

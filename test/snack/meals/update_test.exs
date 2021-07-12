defmodule SnackWeb.Meals.UpdateTest do
  use Snack.DataCase, async: true
  import Snack.Factory

  alias Snack.{Meal, Error}
  alias Snack.Meals.Update

  alias Ecto.Changeset

  describe "call/1" do
    test "When id is invalid return an error" do
      params = %{
        "id" => "5e363eea-8448-48a2-9f80-d539422022c5",
        "descricao" => "abacate"
      }

      response = Update.call(params)

      assert {:error, %Error{result: "Meal not found", status: :not_found}} = response
    end

    test "When all params are valid, return a updated meal" do
      params = %{
        "id" => "5e363eea-8448-48a2-9f80-d539422022c5",
        "descricao" => "abacate"
      }

      response = Update.call(params)

      IO.inspect(response)
      # ver essa parte
      assert %Changeset{changes: %{descricao: "abacate"}} = response
    end
  end
end

defmodule SnackWeb.MealsControllerTest do
  use SnackWeb.ConnCase, async: true

  import Snack.Factory

  describe "create/2" do
    test "When all params are valid, creates a meal", %{conn: conn} do
      params = %{
        "descricao" => "frango",
        "data" => "2016-07-23T11:31:54.149378+02:00",
        "calorias" => "120kCal"
      }

      response =
        conn
        |> post(Routes.meal_path(conn, :create, params))
        |> json_response(:created)

      assert "banana" = response
    end
  end
end

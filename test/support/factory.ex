defmodule Snack.Factory do
  use ExMachina.Ecto

  def meals_params_factory do
    %{
      descricao: "frango",
      data: ~U[2018-11-15 10:00:00Z],
      calorias: "120kCal"
    }
  end
end

defmodule Ejercicio1 do
  @moduledoc """
  Convierte una frase a mayúsculas y la muestra en un JOptionPane de Java.
  """

  @doc """
  Main que solicita un mensaje, lo convierte a mayúsculas y lo muestra.
  """
  def main() do
    Util.input_data("Introduzca el mensaje:")
    |> String.upcase()
    |> Util.show_message()
  end
end

Ejercicio1.main()

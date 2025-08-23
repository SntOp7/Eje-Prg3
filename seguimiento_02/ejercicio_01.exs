defmodule Ejercicio1 do
  @moduledoc """
  Convierte una frase a mayúsculas y la muestra en un JOptionPane de Java.
  """

  def main() do
    Util.input_data("Introduzca el mensaje:")
    |> String.upcase()
    |> Util.show_message()
  end
end

Ejercicio1.main()

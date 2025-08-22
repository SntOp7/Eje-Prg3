defmodule Main do
  @moduledoc """
  Modulo usado para contar las letras de una palabra.
  """

  @doc """
    Main que recibe una palabra y devuelve su cantidad de letras.
  """
  def main() do
    Util.input_data("Introduzca la palabra:")
    |> Util.show_message()
  end
end

Main.main()

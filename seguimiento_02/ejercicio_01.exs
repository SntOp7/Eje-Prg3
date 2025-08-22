defmodule Main do
  @moduledoc """
  Modulo usado para transformar las frases en mayuscula.
  """

  @doc """
    Main que recibe y envia la informacion en Mayuscula.
  """
  def main() do
    Util.input_data("Introduzca el mensaje:")
    |> Util.show_message_mayuscula()
  end
end

Main.main()

defmodule Ejercicio2 do
  @moduledoc """
  Cuenta las letras de una palabra y muestra el resultado.
  """

  def main() do
    palabra = Util.input_data("Introduzca la palabra:")
    mensaje = "El número de letras es: #{String.length(palabra)}"
    Util.show_message(mensaje)
  end
end

Ejercicio2.main()

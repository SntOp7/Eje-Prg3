defmodule Secuencia do #Modulo -> UpperCamelCase
  #Funcion publica -> snake_case
  def mostrar_mensaje() do
    "Mensaje"
    |> IO.puts()
  end
  #Funcion de mostrar mensaje en una linea -> snake_case
  def mostrar_mensaje_unalinea(), do: IO.puts("Hola a todos")

  # Funcion privada -> snake_case
  defp mostrar_mensaje_privado(mensaje) do
  mensaje
  |> IO.puts()
end

  def invocacion_privado() do
    "Mensaje privado desde una funcion"
    |> mostrar_mensaje_privado
  end
end

Secuencia.invocacion_privado()

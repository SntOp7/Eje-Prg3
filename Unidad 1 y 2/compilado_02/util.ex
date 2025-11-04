defmodule Util do # Modulo Util
  def mostrar_mensaje (mensaje) do
    mensaje
    |> IO.puts()
  end

  def pedir_informes() do
    IO.gets("Ingrese su nombre: ")
    |> String.trim()
  end
end

def show_mensaje(mensaje) do
  System.cmd("java", ".", "Mensaje", mensaje)
end

def input_data(mensaje) do
  System.cmd("java", [".cd", ".","Mensaje","input",mensaje])
  |>elem(0)
  |>String.trim()
end

defmodule Util do
  @moduledoc """
  Utility module for displaying messages using java.
  """

  @doc """
    Prompts the user for input using a Java dialog and returns the input.
  """
  def input_data(data) do
    System.cmd("java", ["-cp", ".", "seguimiento_02.Mensaje", "input", data])
    |> elem(0)
    |> String.trim()
  end

  @doc """
    Convierte el mensaje a mayúsculas y lo muestra en un JOptionPane de Java.
  """
  def show_message_mayuscula(message) do
    message_mayus = String.upcase(message)
    System.cmd("java", ["-cp", ".", "seguimiento_02.Mensaje", message_mayus])
  end

  @doc """
    Displays a message using a Java dialog.
  """
  def show_message(message) do
    length = String.length(message)
    mensaje = "El número de letras es: #{length}"
    System.cmd("java", ["-cp", ".", "seguimiento_02.Mensaje", mensaje])
  end

  def calcular_salario() do
    {output, _} = System.cmd("java", ["-cp", ".", "seguimiento_02.Mensaje_2", "empleado"])
    datos = String.trim(output)
    [nombre, horas_str, valor_horas_str] = String.split(datos, ",")
    horas = String.to_integer(horas_str)
    valor_hora = String.to_integer(valor_horas_str)

    base = min(horas, 160)*valor_hora
    extras = max(horas - 160, 0)* round(valor_hora * 1.25)
    salario = base + extras

    mensaje = "El salario neto de #{nombre} es de $#{salario}"

    System.cmd("java", ["-cp", ".", "seguimiento_02.Mensaje", mensaje])
  end


end

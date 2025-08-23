defmodule Util do
  @moduledoc """
  Utility module for displaying messages using Java.
  """

  @doc """
  Displays a message using a Java dialog.
  """
  def show_message(message) do
    System.cmd("java", ["-cp", ".", "seguimiento_02.Mensaje", message])
  end

  @doc """
  Prompts the user for input using a Java dialog and returns the input.
  """
  def input_data(data) do
    System.cmd("java", ["-cp", ".", "seguimiento_02.Mensaje", "input", data])
    |> elem(0)
    |> String.trim()
  end
end

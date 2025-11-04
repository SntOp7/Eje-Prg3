defmodule Util do

  def show_message(message) do
    message
    |> IO.puts()
  end

  def input(message, :string) do
    message
    |> IO.gets()
    |> String.trim()
  end

  def input(message, :integer) do
    message
    |> input(:string)
    |> String.to_integer()
  end

  def input(message, :float) do
    message
    |> input(:string)
    |> String.to_float()
  end
end

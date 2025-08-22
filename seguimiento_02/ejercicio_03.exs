defmodule Main do
  @moduledoc """
  Modulo usado para calcular el salario de un empleado.
  """

  @doc """
    Main que recibe datos del usuario y calcula su salario neto.
  """
  def main() do
    Util.calcular_salario()
  end
end

Main.main()

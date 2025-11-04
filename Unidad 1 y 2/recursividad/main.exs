defmodule Main do
  def main() do
    resultado = sumar(5)
    IO.puts("el resultado es #{resultado}")
  end

  def recursiva(0) do
    IO.puts("No hay mas muñecas para abrir")
  end

  def recursiva(n) when n > 0 do
    IO.puts("Se abrio la muñeca numero: #{n}")
    recursiva(n-1)
    IO.puts("Se cerro la muñeca numero: #{n}")
  end

  def sumar(0) do
    0
  end

  def sumar(n) do
    n + sumar(n-1)
  end
end

Main.main()

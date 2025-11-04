defmodule Main do
  def main() do
    lista = [10, 4, 12, 7, 6, 20, 9, 15]
    resultado = recursividad_1(lista, 0)
    IO.puts(resultado)
  end

  def recursividad_1([], count), do: count

  def recursividad_1([ n | t ], count) do
    if rem(n, 3) == 0 do
      recursividad_1(t, count + 1)
    else if rem(n, 5) == 0 do
      recursividad_1(t, count + 1)
    else
      recursividad_1(t, count)
    end
    end
    if rem(n, 3) == 0 or rem(n, 5) == 0 do
      recursividad_1(t, count + 1)
      else
        recursividad_1(t, count)
      end
    end
end
Main.main()

defmodule Main do
  def main() do
    lista = [1,3,5]
    resultado = recursividad_2(lista)
    IO.inspect(resultado)
  end

  def recursividad_2([]), do: {:error, :lista_vacia}

  def recursividad_2([h | t]), do: hallar(t, h, h)

  def hallar([], max, min), do: {max, min}

  def hallar([h | t], max, min) do
    max2 = if h>max, do: h, else: max
    min2 = if h<min, do: h, else: min
    hallar(t, max2, min2)
  end
end

Main.main()

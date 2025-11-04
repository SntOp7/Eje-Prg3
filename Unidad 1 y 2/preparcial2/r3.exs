defmodule Main do
  def main() do
    lista = ["jose", "jose","maria", "ana"]
    t = eliminar_repetidos(lista)
    IO.inspect(t)
  end

  def eliminar_repetidos([]), do: [:error, :lista_vacia]

  def eliminar_repetidos(lista), do: eliminar(lista)

  def eliminar([]), do: []

  def eliminar([h | t]) do
    nuevaLista = quitar(h, t)
    [h | eliminar(nuevaLista)]
  end

  def quitar(_, []), do: []

  def quitar(x, [h | t]) do
    if x == h do
      quitar(x, t)
    else
      [h | quitar(x, t)]
    end
  end
end
Main.main()

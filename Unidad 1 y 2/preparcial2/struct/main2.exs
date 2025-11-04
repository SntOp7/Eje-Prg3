defmodule Main do
  def main() do
    l1 = Libro.crearLibro("123", "Cape", "Gustambo", 2001, false)
    l = prestarLibro(l1)
    IO.inspect(l)
  end

  def prestarLibro(libro) do
    %{libro | prestado: true}
  end
end
Main.main()

defmodule Libro do
  defstruct  isbn: "", titulo: "", autor: "", anio: 0, prestado: false

  def crearLibro( isbn, titulo, autor, anio, prestado) do
    %Libro{isbn: isbn, titulo: titulo, autor: autor, anio: anio, prestado: prestado}
  end
end

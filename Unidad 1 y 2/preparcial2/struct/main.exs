defmodule Main do
  def main() do
    c1 = Curso.crearCurso(01, "matematicas", 5, "Maria")
    c2 = Curso.crearCurso(02, "español", 3, "Ana")
    carga = validarCarga(c1)
    IO.puts("la carga es de #{carga}")
    nuevo = cambiar_docente(c2, "jose")
    IO.inspect(nuevo)
  end

  def validarCarga(curso) do
    if curso.creditos >= 4 do
      :alta_carga
    else
      :baja_carga
    end
  end

  def cambiar_docente(curso, nuevoDocente) do
    %{curso | docente: nuevoDocente}
  end
end
Main.main()

defmodule Curso do
  defstruct codigo: 0, nombre: "", creditos: 0, docente: ""

  def crearCurso(codigo, nombre, creditos, docente) do
    %Curso{codigo: codigo, nombre: nombre, creditos: creditos, docente: docente }
  end
end

defmodule Producto do
  defstruct codigo: "", nombre: "", precio: 0.0

  def crear(codigo, nombre, precio) do
    %Producto{codigo: codigo, nombre: nombre, precio: precio}
  end

  def escribir_csv(list_productos, nombre_archivo) do
      columnas = "Codigo, Nombre, Precio\n"

      contenido =
        Enum.map(list_productos,
          fn %Producto{codigo: codigo, nombre: nombre, precio: precio} -> "#{codigo}, #{nombre}, #{precio}\n"
          end)
        |> Enum.join()

      File.write(nombre_archivo, columnas <> contenido)
  end

  def leer_csv(nombre_archivo) do
    case File.read(nombre_archivo) do
      {:ok, contenido} ->
        String.split(contenido, "\n")
        |> Enum.map(fn line ->
          case String.split(line, ",") do
            ["Codigo", "Nombre", "Precio"] -> nil
            [codigo, nombre, precio] ->
              %Producto{codigo: codigo, nombre: nombre, precio: precio}
              _-> nil
          end
        end)
        |> Enum.filter(& &1)

      {:error, reason} ->
        IO.puts("Error al leer archivo: #{reason}")
        []
    end
  end
end

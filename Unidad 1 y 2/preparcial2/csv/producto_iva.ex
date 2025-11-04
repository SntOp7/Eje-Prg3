defmodule Producto_con_iva do
  defstruct codigo: "", nombre: "", precio: 0.0, iva: 0.0, precio_con_iva: 0.0

  def crear(codigo, nombre, precio, iva, precio_con_iva) do
    %Producto_con_iva{codigo: codigo, nombre: nombre, precio: precio, iva: iva, precio_con_iva: precio_con_iva}
  end

  def escribir_csv(list_productos, nombre_archivo) do
      columnas = "Codigo, Nombre, Precio, Iva, Precio con iva\n"

      contenido =
        Enum.map(list_productos,
          fn %Producto_con_iva{codigo: codigo, nombre: nombre, precio: precio, iva: iva, precio_con_iva: precio_con_iva} -> "#{codigo}, #{nombre}, #{precio}, #{iva}, #{precio_con_iva}\n"
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
            ["Codigo", "Nombre", "Precio", "Iva", "Precio con iva"] -> nil
            [codigo, nombre, precio, iva, precio_con_iva] ->
              %Producto_con_iva{codigo: codigo, nombre: nombre, precio: precio, iva: iva, precio_con_iva: precio_con_iva}
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

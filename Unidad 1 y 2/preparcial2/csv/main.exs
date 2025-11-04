defmodule Main do
  def main() do
    p1 = Producto.crear("P001", "Mouse Logitech", 89.99)
    p2 = Producto.crear("P002", "Teclado Mecánico", 199.50)
    p3 = Producto.crear("P003", "Monitor 24 pulgadas", 650.00)
    p4 = Producto.crear("P004", "Laptop Acer", 3200.75)
    p5 = Producto.crear("P005", "Audífonos Sony", 250.40)

    lista = [p1, p2, p3, p4, p5]

    Producto.escribir_csv(lista, "productos.csv")
    IO.puts("Archivo CSV generado correctamente ✅")

    productos_leidos = Producto.leer_csv("productos.csv")
    IO.puts("Productos leídos del archivo:")
    IO.inspect(productos_leidos)

    lista_iva = mas_iva(lista)

    Producto_con_iva.escribir_csv(lista_iva, "productos_con_iva.csv")
    IO.puts("Archivo CSV mas iva generado correctamente ✅")

    productos_leidos_iva = Producto_con_iva.leer_csv("productos_con_iva.csv")
    IO.puts("Productos leídos del archivo:")
    IO.inspect(productos_leidos_iva)
  end

  def mas_iva(lista) do
    Enum.map(lista, fn %Producto{codigo: c, nombre: n, precio: p} ->
      %Producto_con_iva{codigo: c, nombre: n, precio: p, iva: 1.19, precio_con_iva: p*1.19} end)
  end
end

Main.main()

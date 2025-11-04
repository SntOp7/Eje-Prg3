defmodule Main do
  def main() do
    estadisticas()
  end

  def lista_productos() do
    lista = [%{nombre: "Sofa", precio: 120000, stock: 10}, %{nombre: "Cortina", precio: 30000, stock: 12}, %{nombre: "Silla", precio: 50000, stock: 3}]
    IO.puts("#{inspect(lista)}")
    lista = Enum.map(lista, fn producto -> Map.put(producto, :precio, producto.precio+producto.precio*0.10) end)
    IO.puts("#{inspect(lista)}")
    stock_mas5 = Enum.filter(lista, fn producto -> producto.stock > 5 end)
    IO.puts("#{inspect(stock_mas5)}")
  end

  def registro_estudiantes() do
    lista = [{"Jose", 10, 4.2}, {"Michael", 11, 4.5}, {"Sara", 10, 2.5}]
    pasan = Enum.filter(lista, fn {_,_, nota} -> nota>= 3 end)
    IO.puts("#{inspect(pasan)}")
    lista_mapas = Enum.map(lista, fn {nombre, edad, nota} -> %{nombre: nombre, edad: edad, nota: nota} end)
    IO.puts("#{inspect(lista_mapas)}")
    de_10 = Enum.group_by(lista_mapas, & &1.edad)
    IO.puts("#{inspect(de_10)}")
  end

  def config() do
    key = [modo: :rapido, intentos: 3, usuario: "admin"]
    key = Keyword.put(key, :activo, true)
    IO.puts("#{inspect(key)}")
    mapa = Enum.into(key, %{})
    IO.puts("#{Map.has_key?(mapa, :usuario)}")
    Enum.each(mapa, fn {clave, valor} -> IO.puts "#{clave} : #{valor}" end)
  end

  def reservas() do
    lista = [%{cliente: "Jose", habitacion: 201, dias: 2}, %{cliente: "Laura", habitacion: 202, dias: 3}, %{cliente: "Juan", habitacion: 203, dias: 1}]
    dias = Enum.reduce(lista, 0, fn reserva, acc -> acc + reserva.dias end)
    IO.puts("Total dias: #{dias}")
    reserva = Enum.find(lista, fn reserva -> reserva.dias > 2 end)
    IO.puts("#{inspect(reserva)}")
    primero = hd(lista)
    tupla = primero |> Map.to_list() |> List.to_tuple()
    IO.puts("#{inspect(tupla)}")
  end

  def estadisticas() do
    lista = [%{producto: "arroz", monto: 20000}, %{producto: "frijoles", monto: 1000}, %{producto: "arroz", monto: 10000}]
    ventas = Enum.reduce(lista, 0, fn venta, acc -> acc + venta.monto end)
    IO.puts("Total vendido: #{ventas}")
    agrupado = Enum.group_by(lista, fn venta -> venta.producto end)
    IO.puts("#{inspect(agrupado)}")
    tuplas = Enum.into(agrupado, [])
    IO.puts("#{inspect(tuplas)}")
    mas_vendido = Enum.max_by(tuplas, fn {_producto, ventas} -> length(ventas) end)
    IO.puts("#{inspect(mas_vendido)}")

  end

end

Main.main()

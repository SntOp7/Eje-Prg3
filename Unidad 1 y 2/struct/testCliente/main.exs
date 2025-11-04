defmodule Main do
  def main() do
    c1 = %Cliente{nombre: "Jhan", cedula: "123"}

    p1 = %Producto{nombre: "Arroz", precio: 2000}
    p2 = %Producto{nombre: "Pasta", precio: 5000}
    p3 = %Producto{nombre: "Frizoles", precio: 3000}

    d1 = %Detalle{producto: p1, cantidad: 2}
    d2 = %Detalle{producto: p2, cantidad: 1}
    d3 = %Detalle{producto: p3, cantidad: 1}

    v1 = %Venta{cliente: c1, detalles: [d1, d2, d3]}

    Venta.calcular_total(v1)
  end
end
Main.main()

defModule Main do
  def main do
    numero_positivo_negativo(1)
    |>Util.show_message()

    numero_positivo_negativo(-1)
    |>Util.show_message()

    numero_positivo_negativo(0)
    |>Util.show_message()
  end

  def numero_entero_decimal(n) when (n.is_integer), do: Util.show_message("En numero es: Entero")
  def numero_entero_decimal(n) when (n.is_float), do: Util.show_message("En numero es: Decimal")

end

defmodule Ejercicio3 do
  @moduledoc """
  Calcula el salario neto de un empleado pidiendo los datos con formularios en Java.
  """

  def main() do
    nombre = Util.input_data("Ingrese su nombre:")
    horas_str = Util.input_data("Ingrese sus horas trabajadas:")
    valor_horas_str = Util.input_data("Ingrese el valor por hora:")

    horas = String.to_integer(String.trim(horas_str))
    valor_hora = String.to_integer(String.trim(valor_horas_str))

    base = min(horas, 160) * valor_hora
    extras = max(horas - 160, 0) * round(valor_hora * 1.25)
    salario = base + extras

    mensaje = "El salario neto de #{nombre} es de $#{salario}"
    Util.show_message(mensaje)
  end
end

Ejercicio3.main()

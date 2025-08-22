defmodule Problema_n1 do
  defp mostrar_mensaje(mensaje) do
    mensaje
    |> IO.puts()
  end

  def invocar_privado() do
    "Bienvenidos a la empresa Once Ltda"
    |> mostrar_mensaje
  end
end

Problema_n1.invocar_privado()

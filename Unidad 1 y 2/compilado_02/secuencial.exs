defmodule Problema1_util do
  def mostrar_mensaje do
    Util.mostrar_mensaje("Bienvenidos a la empresa Once Ltda")
  end

  def pedir_info do
    Util.pedir_informes()
  end
end

Problema1_util.mostrar_mensaje()
Problema1_util.pedir_info()

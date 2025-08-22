defmodule Main do
  def main() do
    Util.input_data("Introduzca el mensaje:")
    |> Util.show_message_mayuscula()
  end
end

Main.main()

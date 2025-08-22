defmodule Main do
  def main() do
    Util.input_data("Introduzca la palabra:")
    |> Util.show_message()
  end
end

Main.main()

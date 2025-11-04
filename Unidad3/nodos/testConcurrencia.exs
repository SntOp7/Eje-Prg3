#spawn -> spawn/1 spawn/3
#No retorna respuesta, solo crea procesos y devuelve su PID
#spawn(fun)
result = spawn(fn ->
  IO.puts("Hola spawn/1")
end)
IO.puts("PID del proceso spawn/1: #{inspect(result)}")

defmodule Concurrencia do

  def saludo(msg) do
    msg |> IO.puts()

  end
end

result2 = spawn(__MODULE__, :saludo, ["Hola spawn/3"])
IO.puts("El PID del proceso spawn/3 es: #{inspect(result2)}")

#--------------------------Task-----------------------------

#task -> permitren crear procesos que retornan valores

#Task.async() -> Task.async/1 Task.async/3
#Crea un proceso y retorna un struct task

task = Task.async(fn ->
  "Hola Task.async/1"
end)

#   IO.puts("Struct task : #{inspect(resultTask)}")

#Task.await() -> Task.await/2
#Espera a que el proceso termine y retorna el valor
#Task.await(task, timeout // 5000)

resp = Task.await(task)
IO.puts("respuesta del task.await: #{inspect(resp)}")

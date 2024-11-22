defmodule ConcurrentOps do
  def sum_in_process(list) do
    id = spawn(fn ->
      receive do
        message ->
          message
          |> Enum.sum()
          |> IO.puts()
      end
    end)

    send(id, list)
  end

  def parallel_map(list, function) do
    list
    |> Enum.map(fn item -> Task.async(fn -> function.(item) end) end)
    |> Enum.map(&Task.await/1)
  end


  def sum_in_process(list) do
    parent = self()
    spawn(fn ->
      sum = Enum.sum(list)
      send(parent, {:result, sum})
    end)

    receive do
      {:result, sum} -> sum
    end
  end

  def parallel_map(list, function) do
    list
    |> Enum.map(fn item -> Task.async(fn -> function.(item) end) end)
    |> Enum.map(&Task.await/1)
  end

  def p_shared_counter() do
    {:ok, counter} = Agent.start_link(fn -> 0 end)

    increment = fn -> Agent.update(counter, &(&1 + 1)) end
    get_value = fn -> Agent.get(counter, & &1) end

    %{increment: increment, get_value: get_value}
  end
end

defmodule Streams do
  def nothingHappns do
    Stream.map(1..10_000, fn x -> x * 2 end)
  end

  def streamTimes(times) do
    Stream.map(1..10_000, fn x -> x *2 end)
    |> Enum.take(times)
  end
end

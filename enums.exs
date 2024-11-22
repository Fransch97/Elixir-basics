defmodule TestingEnum do
  def mappingMulti do
    Enum.map([1,2,3,4], fn number -> number * 2 end)
  end

  def q do
    Enum.map([1,2,3,4], fn number -> number * number end)
  end

  def reduce do
    Enum.reduce([1,2,3,4], fn x, acc -> acc + x end)
  end

  def reduceAndAdd do
    Enum.reduce([1,2,3,4], 10, fn x, acc -> acc + x end)
  end

  def reduceAndAdd2WontWork do
    Enum.reduce([1,2,3,4], 10, 20, fn x, acc -> acc + x end)
  end
end

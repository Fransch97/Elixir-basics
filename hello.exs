defmodule Hello do
  def world(name) do
    IO.puts("Hello Elixir #{name}");
  end

  def lists() do
    test = [1,2,3];
  end

  def addToList(list, todo) do
    list ++ todo
  end

  def readTuple(tuple, index) do
    elem(tuple, index)
  end

  def summTwoNums(a, b) do
    a+b
  end

  def multiplication(a,b) do
    a * 2
  end

  def multiInline(a,b), do: a * b
end

defmodule Stats do

  #recursive functions
  def sum_list([]), do: 0
  def sum_list([head | tail]) do
    head + sum_list(tail)
  end


  def max_value([]), do: 0
  def max_value([head | tail]) do
    max = max_value(tail)
    if head > max, do: head, else: max
  end

  def sum([]), do: 0
  def sum([head | tail]) do
    head + sum(tail)
  end

  def count([]), do: 0
  def count([head | tail]) do
    count = 1 + count(tail)
  end

  def min_value([]), do: nil
  def min_value([head | []]), do: head
  def min_value([head | tail]) do
    min = min_value(tail)
    if min == nil or head < min, do: head, else: min
  end
end

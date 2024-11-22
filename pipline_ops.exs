defmodule PipelineOps do
  def processList(list) do
    list
    |> Enum.filter(&(rem(&1, 2) != 0))
    |> Enum.map(&(&1 * &1))
  end

  def sum_large(list) do
    list
    |> Enum.filter(&(&1 > 10))
    |> Enum.sum()
  end

  def transform_and_filter(list, function) do
    list
    |> Enum.map(function)
    |> Enum.filter(&(&1 > 10))
  end
end

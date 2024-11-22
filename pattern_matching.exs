defmodule PatternMatching do
  def destructTuple do
    {:ok, value} = {:ok, "Hello"}
    IO.puts(value)
  end

  def extractFirstList do
    [head | tail] = [1, 2, 3, 4]
    IO.puts(head)
    IO.puts(tail)
    IO.inspect(tail)
  end

  def extractValueFromMap do
    %{name: firstname} = %{name: "Francesco", age: 27}
    IO.puts(firstname)
  end

  #handle different tipes by same func
  def greet({:ok, name}) do
    "hello #{name}"
  end

  def greet({:error, reason}) do
    "Error: #{reason}"
  end

  def check_response({:ok, value}) do
    "Success"
  end

  def check_response({:error, reason}) do
    "Failure"
  end
end

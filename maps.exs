defmodule Maps do
  def mapsGeneral do
    map = %{"key1" => "value1", :key2 => "value2", 3 => "value3", age: 23}
    IO.puts(map[:key2])
    IO.puts(map["key1"])
    IO.puts(map[3])
    IO.puts(map[:age])
  end

  def mapsKeys do
    map = %{name: "alix", age: 27}
  end

  def mapsAddAge(map, age) do
    Map.put(map, :age, age)
  end

  def mapsPatternMatching do
    %{name: name} = %{name: "alux", age: 20}
    IO.puts(name)
  end
end

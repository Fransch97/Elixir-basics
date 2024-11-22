defmodule DataOps do
  def updateUser(user, key, value) do
    user = Map.put(user, key, value)
    IO.inspect(user)
  end

  def filter_keyword(keyword, remove_key) do
    filtered_keyword = Keyword.filter(keyword, fn {key, _value} -> key != remove_key end)
    IO.inspect(filtered_keyword)
    filtered_keyword
  end

  def merge_maps(map1, map2) do
    map = Map.merge(map1, map2)
    IO.inspect(map)

  end

end

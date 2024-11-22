defmodule Keywords do
  def keysAlwaysAtoms do
    keyword = [host: "localhost", port: 4000]
    IO.puts(Keyword.get(keyword, :host))
  end

  def update do
    keyword = [host: "localhost", port: 4000]
    newKeyword = Keyword.put(keyword, :port, 8080)
    IO.inspect(newKeyword);
  end

  def patternMatching do
    [host: host, port: port] = [host: "localhost", port: 4000]
    IO.puts(host)
  end
end

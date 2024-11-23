defmodule SimpleState do
  use GenServer

  def start_link(string) do
    GenServer.start_link(__MODULE__, string, name: __MODULE__)
  end

  def init(string) do
    {:ok, string}
  end

  def change_string(string) do
    GenServer.cast(__MODULE__, {:change_value, string})
  end

  def handle_cast({:change_value, string}, state) do
    {:noreply, string}
  end

  def get_string() do
    GenServer.call(__MODULE__, :get_string)
  end

  def handle_call(:get_string, _from, state) do
    {:reply, state, state}
  end
end

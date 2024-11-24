defmodule KeyValueStore do
  use GenServer

  def start_link(initial_state) do
    GenServer.start_link(__MODULE__, initial_state, name: __MODULE__)
  end

  def init(init_arg) do
    {:ok, init_arg}
  end

  def get() do
    GenServer.call(__MODULE__, :get)
  end

  def handle_call(:get, _from,state) do
    {:reply, state, state}
  end

  def put(map) do
    GenServer.cast(__MODULE__, {:put, map})
  end

  def handle_cast({:put, map}, state) do
    {:noreply, Map.merge(state, map)}
  end

  def delete(map) do
    GenServer.cast(__MODULE__, {:delete, map})
  end

  def handle_cast({:delete, map}, state) do
    keys_to_remove = Map.keys(map)
    {:noreply, Map.drop(state, keys_to_remove)}
  end

end

defmodule MyFirstGenServ do
  use GenServer

#-------------------------------------------------
  def start_link(initial_state) do
    GenServer.start_link(__MODULE__, initial_state, name: __MODULE__)
  end

  def init(inital_state) do
    {:ok, inital_state}
  end
#-------------------------------------------------

#-------------------------------------------------
  def increment() do
    GenServer.cast(__MODULE__, :increment)
  end

  def handle_cast(:increment, state) do
    {:noreply, state + 1}
  end
#-------------------------------------------------

#-------------------------------------------------
  def decrement() do
    GenServer.cast(__MODULE__, :decrement)
  end

  def handle_cast(:decrement, state) do
    {:noreply, state - 1}
  end
#-------------------------------------------------



#-------------------------------------------------
  def get_value() do
    GenServer.call(__MODULE__, :get_value)
  end

  def handle_call(:get_value, _from, state) do
    {:reply, state, state}
  end
#-------------------------------------------------

end

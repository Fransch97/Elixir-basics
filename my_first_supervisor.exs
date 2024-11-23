defmodule MyFirstSupervisor.Supervise do
  use Supervisor

  def start_link(initial_state) do
    Supervisor.start_link(__MODULE__, initial_state, name: __MODULE__)
  end

  def init(initial_state) do
    children = [
      {MyFirstGenServ, initial_state},
    ]

    Supervisor.init(children, strategy: :one_for_one)
  end
end

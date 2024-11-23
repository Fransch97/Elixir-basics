defmodule StateSupervisor.Supervice do
  use Supervisor

  def start(status) do
    Supervisor.start_link(__MODULE__, status, name: __MODULE__)
  end

  def init(status) do
    children = [
      {SimpleState, status},
    ]
    Supervisor.init(children, strategy: :one_for_one)
  end
end

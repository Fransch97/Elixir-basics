defmodule AppSupervisor do
  use Supervisor

  def start() do
    Supervisor.start_link(__MODULE__, :ok ,name: __MODULE__)
  end

  def init(:ok) do
    children = [
      {KeyValueStore, %{}}
    ]

    Supervisor.init(children, strategy: :one_for_one)
  end
end

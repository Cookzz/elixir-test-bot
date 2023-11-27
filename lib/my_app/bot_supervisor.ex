defmodule ElixirTestBot.Supervisor do
  use Supervisor

  def start_link() do
    Supervisor.start_link(__MODULE__, :ok, __MODULE__)
  end

  @impl true
  def init(_init_arg) do
    children = [ElixirTestBot.Consumer]

    Supervisor.init(children, strategy: :one_for_one)
  end
end

defmodule ElixirTestBot do
  @moduledoc """
  Documentation for `ElixirTestBot`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ElixirTestBot.hello()
      :world

  """
  use Application

  def start(_type, _args) do
    ElixirTestBot.Supervisor.start_link()
  end
end

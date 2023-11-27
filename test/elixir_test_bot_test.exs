defmodule ElixirTestBotTest do
  use ExUnit.Case
  doctest ElixirTestBot

  test "greets the world" do
    assert ElixirTestBot.hello() == :world
  end
end

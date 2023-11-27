defmodule ElixirTestBot.Consumer do
  @moduledoc """
    This module defines the consumer agent that acts as a gateway event handler for
    events passed from the Discord WebSocket connection.
  """
  use Nostrum.Consumer
  alias Nostrum.Api

  require Logger

  def handle_event({:MESSAGE_CREATE, msg, _ws_state}) do
    Logger.debug(fn -> "Check handle event: #{inspect(msg.content)}" end)

    case msg.content do
      "!sleep" ->
        Api.create_message(msg.channel_id, "Going to sleep...")
        # This won't stop other events from being handled.
        Process.sleep(3000)

      "!ping" ->
        Api.create_message(msg.channel_id, "pyongyang!")

      "!raise" ->
        # This won't crash the entire Consumer.
        raise "No problems here!"

      _ ->
        :ignore
    end
  end

  # Default event handler, if you don't include this, your consumer WILL crash if
  # you don't have a method definition for each event type.
  def handle_event(_event) do
    Logger.debug(fn -> "Check handle event 2" end)
    :noop
  end
end

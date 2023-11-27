# ElixirTestBot

I am only making this repo to learn elixir.

## Plans

Currently, I only have a few plans to make this bot function.

* Respond to basic commands (any, with a prefix of !)
* Play music
* Translate (W.I.P)

## Installation

It actually does work now as of Elixir 1.12.3 - for commands, you can look at bot_consumer.ex but it is subject to change. 

If you have Elixir installed (and mix as well), you can just run these commands to get it up and running:
`mix compile` -> `iex -S mix`

## Notes

Don't forget to add your token in config.exs file and in Discord Developer Portal, do not forget to enable some or all of the Privileged Gateway Intents so that it can receive the contents of your message. Spent 2 hours debugging because of this.
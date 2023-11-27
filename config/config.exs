import Config

config :nostrum,
  token: "",
  ffmpeg: "ffmpeg",
  gateway_intents: :all,
  dev: true

config :logger, :console, metadata: [:shard, :guild, :channel]

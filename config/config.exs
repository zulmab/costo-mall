# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :costo_mall,
  ecto_repos: [CostoMall.Repo]

# Configures the endpoint
config :costo_mall, CostoMallWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0b0YNDrpIeqob8HIMJZPS7yPedGL9IdmOoGjjFeaR3qSm29wgEHUIjaArHbEbfLS",
  render_errors: [view: CostoMallWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: CostoMall.PubSub,
  live_view: [signing_salt: "HoFArg1F"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

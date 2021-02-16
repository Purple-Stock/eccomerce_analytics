# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :analytics,
  ecto_repos: [Analytics.Repo]

# Configures the endpoint
config :analytics, AnalyticsWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "s5hKuXQvJ312/zZAv/n1hFwz07U9qafp4bafUTf6LXBtPP1+hXPNTfQucj0Cnirj",
  render_errors: [view: AnalyticsWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Analytics.PubSub,
  live_view: [signing_salt: "4yw93OS1"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

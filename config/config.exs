# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :snack,
  ecto_repos: [Snack.Repo]

config :snack, Snack.Repo, migration_primary_key: [type: :binary_id]
config :snack, Snack.Repo, migration_foreign_key: [type: :binary_id]

config :elixir, :time_zone_database, Tzdata.TimeZoneDatabase
# Configures the endpoint
config :snack, SnackWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "2kh5yQXpmbp8gtXETPU+/y4VDNkqeEMlKorIRdjgB1GXRhVBDjsvRlfKspD+N8Fy",
  render_errors: [view: SnackWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Snack.PubSub,
  live_view: [signing_salt: "F+gk+h63"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

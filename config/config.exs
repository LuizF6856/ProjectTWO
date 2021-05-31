# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :projecttwo,
  ecto_repos: [Projecttwo.Repo]

# Configures the endpoint
config :projecttwo, ProjecttwoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1Lq7zEgQULTr6n6unpM8uYm/ptTe/eJM9OXWaxfObW8hj597/LnU0joZg/mSV3qv",
  render_errors: [view: ProjecttwoWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Projecttwo.PubSub,
  live_view: [signing_salt: "yAbcrNQT"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

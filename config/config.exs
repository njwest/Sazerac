# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :sazerac,
  ecto_repos: [Sazerac.Repo]

# Configures the endpoint
config :sazerac, SazeracWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "FxoXR7Pe1ba0tDWWJSCV8RZVGlShhP2RODLPmTGUUF7wp7a2P8OKJ2IVNzya7aeM",
  render_errors: [view: SazeracWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Sazerac.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

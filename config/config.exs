# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :filer,
  ecto_repos: [Filer.Repo]

# Configures the endpoint
config :filer, Filer.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "yyU0Y+IHOofTfMwkWB3HR1D2OFXANKihJaF3AfFcj4hUJqPYVqQKiGA0pdT54z3C",
  render_errors: [view: Filer.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Filer.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

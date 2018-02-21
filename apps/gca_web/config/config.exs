# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :gca_web,
  namespace: GcaWeb,
  ecto_repos: [Gca.Repo]

# Configures the endpoint
config :gca_web, GcaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "VLVUL8EXyQrRPfpJTF8Ubypd6GZ1eIeMHw+JsVSS+H/1C9OcmGpuWkKPgJgziPnt",
  render_errors: [view: GcaWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: GcaWeb.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :gca_web, :generators,
  context_app: :gca

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

use Mix.Config

config :gca, ecto_repos: [Gca.Repo]

import_config "#{Mix.env}.exs"

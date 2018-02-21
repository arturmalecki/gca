use Mix.Config

# Configure your database
config :gca, Gca.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "gca_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

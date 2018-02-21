use Mix.Config

# Configure your database
config :gca, Gca.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "password",
  database: "gca_dev",
  #hostname: "localhost",
  pool_size: 10

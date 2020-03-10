use Mix.Config

# Configure your database
config :auto_finder, AutoFinder.Repo,
  username: "postgres",
  password: "postgres",
  database: "auto_finder_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :auto_finder, AutoFinderWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

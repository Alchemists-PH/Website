use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :alchemist_ph, AlchemistPh.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

if File.exists?("config/database.exs") do
  # See config/database.exs.sample
  IO.puts "Loading config from database.exs..."
  import_config "database.exs"
else
  # Configure your database
  config :alchemist_ph, AlchemistPh.Repo,
    adapter: Ecto.Adapters.Postgres,
    username: "postgres",
    password: "postgres",
    database: "alchemist_ph_test",
    hostname: "localhost",
    pool: Ecto.Adapters.SQL.Sandbox
end

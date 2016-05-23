use Mix.Config

cond do
  Mix.env == :dev ->
    config :website, Website.Repo,
      adapter: Ecto.Adapters.Postgres,
      database: "website_dev",
      hostname: "localhost",
      pool_size: 10

  Mix.env == :test ->
    config :website, Website.Repo,
      adapter: Ecto.Adapters.Postgres,
      database: "website_test",
      hostname: "localhost",
      pool: Ecto.Adapters.SQL.Sandbox
end


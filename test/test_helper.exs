ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Website.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Website.Repo --quiet)
Ecto.Adapters.SQL.Sandbox.mode(Website.Repo, :manual)


ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Website.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Website.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Website.Repo)


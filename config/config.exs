import Config

config :psql_demo, ecto_repos: [PsqlDemo.Repo]

config :psql_demo, PsqlDemo.Repo,
  database: "psql_demo_repo",
  username: "bfalk",
  hostname: "localhost"

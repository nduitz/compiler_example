import Config

config :compiler_example, CompilerExample.Repo,
  database: "compiler_example_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"

config :compiler_example, ecto_repos: [CompilerExample.Repo]

defmodule CompilerExample.Repo do
  use Ecto.Repo,
    otp_app: :compiler_example,
    adapter: Ecto.Adapters.Postgres
end

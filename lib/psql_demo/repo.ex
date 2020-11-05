defmodule PsqlDemo.Repo do
  use Ecto.Repo,
    otp_app: :psql_demo,
    adapter: Ecto.Adapters.Postgres
end

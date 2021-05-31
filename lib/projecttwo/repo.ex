defmodule Projecttwo.Repo do
  use Ecto.Repo,
    otp_app: :projecttwo,
    adapter: Ecto.Adapters.Postgres
end

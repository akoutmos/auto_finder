defmodule AutoFinder.Repo do
  use Ecto.Repo,
    otp_app: :auto_finder,
    adapter: Ecto.Adapters.Postgres
end

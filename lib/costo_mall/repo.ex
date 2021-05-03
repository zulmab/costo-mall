defmodule CostoMall.Repo do
  use Ecto.Repo,
    otp_app: :costo_mall,
    adapter: Ecto.Adapters.Postgres
end

defmodule PhoenixFlopPets.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_flop_pets,
    adapter: Ecto.Adapters.SQLite3
end

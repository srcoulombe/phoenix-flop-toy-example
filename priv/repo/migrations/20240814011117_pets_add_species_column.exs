defmodule PhoenixFlopPets.Repo.Migrations.PetsAddSpeciesColumn do
  use Ecto.Migration

  def change do
    alter table("pets") do
      add :species, :text
    end
  end
end

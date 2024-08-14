# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     PhoenixFlopPets.Repo.insert!(%PhoenixFlopPets.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
PhoenixFlopPets.Repo.insert!(%PhoenixFlopPets.Pets.Pet{name: "Karma", age: 5, species: "dog"})
PhoenixFlopPets.Repo.insert!(%PhoenixFlopPets.Pets.Pet{name: "Billie", age: 4, species: "dog"})
PhoenixFlopPets.Repo.insert!(%PhoenixFlopPets.Pets.Pet{name: "Milo", age: 3, species: "dog"})
PhoenixFlopPets.Repo.insert!(%PhoenixFlopPets.Pets.Pet{name: "Nelson", age: 2, species: "dog"})
PhoenixFlopPets.Repo.insert!(%PhoenixFlopPets.Pets.Pet{name: "Ruby", age: 1, species: "dog"})

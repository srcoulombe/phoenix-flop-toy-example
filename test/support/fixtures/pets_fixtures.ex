defmodule PhoenixFlopPets.PetsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `PhoenixFlopPets.Pets` context.
  """

  @doc """
  Generate a pet.
  """
  def pet_fixture(attrs \\ %{}) do
    {:ok, pet} =
      attrs
      |> Enum.into(%{
        age: 42,
        name: "some name"
      })
      |> PhoenixFlopPets.Pets.create_pet()

    pet
  end
end

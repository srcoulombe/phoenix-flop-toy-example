defmodule PhoenixFlopPets.Pets.Pet do
  use Ecto.Schema
  import Ecto.Changeset

  schema "pets" do
    field :name, :string
    field :age, :integer
    field :species, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(pet, attrs) do
    pet
    |> cast(attrs, [:name, :age, :species])
    |> validate_required([:name, :age, :species])
  end
end

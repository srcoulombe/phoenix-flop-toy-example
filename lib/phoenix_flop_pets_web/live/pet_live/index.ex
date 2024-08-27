defmodule PhoenixFlopPetsWeb.PetLive.Index do
  use PhoenixFlopPetsWeb, :live_view

  alias PhoenixFlopPets.Pets
  alias PhoenixFlopPets.Pets.Pet

  @impl true
  def mount(_params, _session, socket) do
    {:ok, stream(socket, :pets, Pets.list_pets())}
  end

  @impl true
  def handle_params(params, _url, socket) do
    case Pets.list_pets(params) do
      {:ok, {pets, meta}} ->
        {:noreply, assign(socket, %{pets: pets, meta: meta})}

      {:error, _meta} ->
        {:noreply, push_navigate(socket, to: ~p"/pets")}
    end
  end

  defp apply_action(socket, :edit, %{"id" => id}) do
    socket
    |> assign(:page_title, "Edit Pet")
    |> assign(:pet, Pets.get_pet!(id))
  end

  defp apply_action(socket, :new, _params) do
    socket
    |> assign(:page_title, "New Pet")
    |> assign(:pet, %Pet{})
  end

  defp apply_action(socket, :index, _params) do
    socket
    |> assign(:page_title, "Listing Pets")
    |> assign(:pet, nil)
  end

  @impl true
  def handle_info({PhoenixFlopPetsWeb.PetLive.FormComponent, {:saved, pet}}, socket) do
    {:noreply, stream_insert(socket, :pets, pet)}
  end

  @impl true
  def handle_event("delete", %{"id" => id}, socket) do
    pet = Pets.get_pet!(id)
    {:ok, _} = Pets.delete_pet(pet)

    {:noreply, stream_delete(socket, :pets, pet)}
  end

  @impl true
  def handle_event("update-filter", params, socket) do
    params = Map.delete(params, "_target")
    {:noreply, push_patch(socket, to: ~p"/pets?#{params}")}
  end
end

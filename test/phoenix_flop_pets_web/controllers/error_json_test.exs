defmodule PhoenixFlopPetsWeb.ErrorJSONTest do
  use PhoenixFlopPetsWeb.ConnCase, async: true

  test "renders 404" do
    assert PhoenixFlopPetsWeb.ErrorJSON.render("404.json", %{}) == %{errors: %{detail: "Not Found"}}
  end

  test "renders 500" do
    assert PhoenixFlopPetsWeb.ErrorJSON.render("500.json", %{}) ==
             %{errors: %{detail: "Internal Server Error"}}
  end
end

require "application_system_test_case"

class CargosTest < ApplicationSystemTestCase
  setup do
    @cargo = cargos(:one)
  end

  test "visiting the index" do
    visit cargos_url
    assert_selector "h1", text: "Cargos"
  end

  test "creating a Cargo" do
    visit cargos_url
    click_on "New Cargo"

    fill_in "Descricao", with: @cargo.descricao
    click_on "Create Cargo"

    assert_text "Cargo was successfully created"
    click_on "Back"
  end

  test "updating a Cargo" do
    visit cargos_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @cargo.descricao
    click_on "Update Cargo"

    assert_text "Cargo was successfully updated"
    click_on "Back"
  end

  test "destroying a Cargo" do
    visit cargos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cargo was successfully destroyed"
  end
end

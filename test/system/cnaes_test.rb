require "application_system_test_case"

class CnaesTest < ApplicationSystemTestCase
  setup do
    @cnao = cnaes(:one)
  end

  test "visiting the index" do
    visit cnaes_url
    assert_selector "h1", text: "Cnaes"
  end

  test "creating a Cnae" do
    visit cnaes_url
    click_on "New Cnae"

    fill_in "Codigo", with: @cnao.codigo
    fill_in "Descricao", with: @cnao.descricao
    click_on "Create Cnae"

    assert_text "Cnae was successfully created"
    click_on "Back"
  end

  test "updating a Cnae" do
    visit cnaes_url
    click_on "Edit", match: :first

    fill_in "Codigo", with: @cnao.codigo
    fill_in "Descricao", with: @cnao.descricao
    click_on "Update Cnae"

    assert_text "Cnae was successfully updated"
    click_on "Back"
  end

  test "destroying a Cnae" do
    visit cnaes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cnae was successfully destroyed"
  end
end

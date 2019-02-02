require "application_system_test_case"

class MovimentosTest < ApplicationSystemTestCase
  setup do
    @movimento = movimentos(:one)
  end

  test "visiting the index" do
    visit movimentos_url
    assert_selector "h1", text: "Movimentos"
  end

  test "creating a Movimento" do
    visit movimentos_url
    click_on "New Movimento"

    fill_in "Data", with: @movimento.data
    fill_in "Descricao", with: @movimento.descricao
    fill_in "Valor", with: @movimento.valor
    click_on "Create Movimento"

    assert_text "Movimento was successfully created"
    click_on "Back"
  end

  test "updating a Movimento" do
    visit movimentos_url
    click_on "Edit", match: :first

    fill_in "Data", with: @movimento.data
    fill_in "Descricao", with: @movimento.descricao
    fill_in "Valor", with: @movimento.valor
    click_on "Update Movimento"

    assert_text "Movimento was successfully updated"
    click_on "Back"
  end

  test "destroying a Movimento" do
    visit movimentos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Movimento was successfully destroyed"
  end
end

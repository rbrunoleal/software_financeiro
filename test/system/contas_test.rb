require "application_system_test_case"

class ContasTest < ApplicationSystemTestCase
  setup do
    @conta = contas(:one)
  end

  test "visiting the index" do
    visit contas_url
    assert_selector "h1", text: "Contas"
  end

  test "creating a Conta" do
    visit contas_url
    click_on "New Conta"

    fill_in "Agencia digito", with: @conta.agencia_digito
    fill_in "Agencia numero", with: @conta.agencia_numero
    fill_in "Banco", with: @conta.banco_id
    fill_in "Conta digito", with: @conta.conta_digito
    fill_in "Conta numero", with: @conta.conta_numero
    click_on "Create Conta"

    assert_text "Conta was successfully created"
    click_on "Back"
  end

  test "updating a Conta" do
    visit contas_url
    click_on "Edit", match: :first

    fill_in "Agencia digito", with: @conta.agencia_digito
    fill_in "Agencia numero", with: @conta.agencia_numero
    fill_in "Banco", with: @conta.banco_id
    fill_in "Conta digito", with: @conta.conta_digito
    fill_in "Conta numero", with: @conta.conta_numero
    click_on "Update Conta"

    assert_text "Conta was successfully updated"
    click_on "Back"
  end

  test "destroying a Conta" do
    visit contas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Conta was successfully destroyed"
  end
end

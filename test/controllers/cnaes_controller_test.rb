require 'test_helper'

class CnaesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cnao = cnaes(:one)
  end

  test "should get index" do
    get cnaes_url
    assert_response :success
  end

  test "should get new" do
    get new_cnao_url
    assert_response :success
  end

  test "should create cnao" do
    assert_difference('Cnae.count') do
      post cnaes_url, params: { cnao: { codigo: @cnao.codigo, descricao: @cnao.descricao } }
    end

    assert_redirected_to cnao_url(Cnae.last)
  end

  test "should show cnao" do
    get cnao_url(@cnao)
    assert_response :success
  end

  test "should get edit" do
    get edit_cnao_url(@cnao)
    assert_response :success
  end

  test "should update cnao" do
    patch cnao_url(@cnao), params: { cnao: { codigo: @cnao.codigo, descricao: @cnao.descricao } }
    assert_redirected_to cnao_url(@cnao)
  end

  test "should destroy cnao" do
    assert_difference('Cnae.count', -1) do
      delete cnao_url(@cnao)
    end

    assert_redirected_to cnaes_url
  end
end

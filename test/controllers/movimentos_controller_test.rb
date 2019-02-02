require 'test_helper'

class MovimentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movimento = movimentos(:one)
  end

  test "should get index" do
    get movimentos_url
    assert_response :success
  end

  test "should get new" do
    get new_movimento_url
    assert_response :success
  end

  test "should create movimento" do
    assert_difference('Movimento.count') do
      post movimentos_url, params: { movimento: { data: @movimento.data, descricao: @movimento.descricao, valor: @movimento.valor } }
    end

    assert_redirected_to movimento_url(Movimento.last)
  end

  test "should show movimento" do
    get movimento_url(@movimento)
    assert_response :success
  end

  test "should get edit" do
    get edit_movimento_url(@movimento)
    assert_response :success
  end

  test "should update movimento" do
    patch movimento_url(@movimento), params: { movimento: { data: @movimento.data, descricao: @movimento.descricao, valor: @movimento.valor } }
    assert_redirected_to movimento_url(@movimento)
  end

  test "should destroy movimento" do
    assert_difference('Movimento.count', -1) do
      delete movimento_url(@movimento)
    end

    assert_redirected_to movimentos_url
  end
end

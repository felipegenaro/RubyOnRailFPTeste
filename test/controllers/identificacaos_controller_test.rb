require 'test_helper'

class IdentificacaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @identificacao = identificacaos(:one)
  end

  test "should get index" do
    get identificacaos_url
    assert_response :success
  end

  test "should get new" do
    get new_identificacao_url
    assert_response :success
  end

  test "should create identificacao" do
    assert_difference('Identificacao.count') do
      post identificacaos_url, params: { identificacao: { data: @identificacao.data, description: @identificacao.description, name: @identificacao.name, public_id: @identificacao.public_id } }
    end

    assert_redirected_to identificacao_url(Identificacao.last)
  end

  test "should show identificacao" do
    get identificacao_url(@identificacao)
    assert_response :success
  end

  test "should get edit" do
    get edit_identificacao_url(@identificacao)
    assert_response :success
  end

  test "should update identificacao" do
    patch identificacao_url(@identificacao), params: { identificacao: { data: @identificacao.data, description: @identificacao.description, name: @identificacao.name, public_id: @identificacao.public_id } }
    assert_redirected_to identificacao_url(@identificacao)
  end

  test "should destroy identificacao" do
    assert_difference('Identificacao.count', -1) do
      delete identificacao_url(@identificacao)
    end

    assert_redirected_to identificacaos_url
  end
end

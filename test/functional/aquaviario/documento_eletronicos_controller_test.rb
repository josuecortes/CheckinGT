require 'test_helper'

class Aquaviario::DocumentoEletronicosControllerTest < ActionController::TestCase
  setup do
    @aquaviario_documento_eletronico = aquaviario_documento_eletronicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aquaviario_documento_eletronicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aquaviario_documento_eletronico" do
    assert_difference('Aquaviario::DocumentoEletronico.count') do
      post :create, aquaviario_documento_eletronico: { dad_id: @aquaviario_documento_eletronico.dad_id, documento: @aquaviario_documento_eletronico.documento, rodoviario_id: @aquaviario_documento_eletronico.rodoviario_id, tipo_documento_eletronico_id: @aquaviario_documento_eletronico.tipo_documento_eletronico_id, unidade_carga_id: @aquaviario_documento_eletronico.unidade_carga_id, usuario_id: @aquaviario_documento_eletronico.usuario_id }
    end

    assert_redirected_to aquaviario_documento_eletronico_path(assigns(:aquaviario_documento_eletronico))
  end

  test "should show aquaviario_documento_eletronico" do
    get :show, id: @aquaviario_documento_eletronico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aquaviario_documento_eletronico
    assert_response :success
  end

  test "should update aquaviario_documento_eletronico" do
    put :update, id: @aquaviario_documento_eletronico, aquaviario_documento_eletronico: { dad_id: @aquaviario_documento_eletronico.dad_id, documento: @aquaviario_documento_eletronico.documento, rodoviario_id: @aquaviario_documento_eletronico.rodoviario_id, tipo_documento_eletronico_id: @aquaviario_documento_eletronico.tipo_documento_eletronico_id, unidade_carga_id: @aquaviario_documento_eletronico.unidade_carga_id, usuario_id: @aquaviario_documento_eletronico.usuario_id }
    assert_redirected_to aquaviario_documento_eletronico_path(assigns(:aquaviario_documento_eletronico))
  end

  test "should destroy aquaviario_documento_eletronico" do
    assert_difference('Aquaviario::DocumentoEletronico.count', -1) do
      delete :destroy, id: @aquaviario_documento_eletronico
    end

    assert_redirected_to aquaviario_documento_eletronicos_path
  end
end

require 'test_helper'

class Aquaviario::UnidadeCargasControllerTest < ActionController::TestCase
  setup do
    @aquaviario_unidade_carga = aquaviario_unidade_cargas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aquaviario_unidade_cargas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aquaviario_unidade_carga" do
    assert_difference('Aquaviario::UnidadeCarga.count') do
      post :create, aquaviario_unidade_carga: { dad_id: @aquaviario_unidade_carga.dad_id, placa: @aquaviario_unidade_carga.placa, status_desembaraco_data: @aquaviario_unidade_carga.status_desembaraco_data, status_desembaraco_id: @aquaviario_unidade_carga.status_desembaraco_id, status_processamento_data: @aquaviario_unidade_carga.status_processamento_data, status_processamento_id: @aquaviario_unidade_carga.status_processamento_id, status_unidade_carga_data: @aquaviario_unidade_carga.status_unidade_carga_data, status_unidade_carga_id: @aquaviario_unidade_carga.status_unidade_carga_id, termo_fiel_depositario_data: @aquaviario_unidade_carga.termo_fiel_depositario_data, termo_fiel_depositario_id: @aquaviario_unidade_carga.termo_fiel_depositario_id, termo_lacre_id: @aquaviario_unidade_carga.termo_lacre_id, termo_vistoria_id: @aquaviario_unidade_carga.termo_vistoria_id, tipo_unidade_id: @aquaviario_unidade_carga.tipo_unidade_id, usuario_alterou_id: @aquaviario_unidade_carga.usuario_alterou_id, usuario_id: @aquaviario_unidade_carga.usuario_id }
    end

    assert_redirected_to aquaviario_unidade_carga_path(assigns(:aquaviario_unidade_carga))
  end

  test "should show aquaviario_unidade_carga" do
    get :show, id: @aquaviario_unidade_carga
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aquaviario_unidade_carga
    assert_response :success
  end

  test "should update aquaviario_unidade_carga" do
    put :update, id: @aquaviario_unidade_carga, aquaviario_unidade_carga: { dad_id: @aquaviario_unidade_carga.dad_id, placa: @aquaviario_unidade_carga.placa, status_desembaraco_data: @aquaviario_unidade_carga.status_desembaraco_data, status_desembaraco_id: @aquaviario_unidade_carga.status_desembaraco_id, status_processamento_data: @aquaviario_unidade_carga.status_processamento_data, status_processamento_id: @aquaviario_unidade_carga.status_processamento_id, status_unidade_carga_data: @aquaviario_unidade_carga.status_unidade_carga_data, status_unidade_carga_id: @aquaviario_unidade_carga.status_unidade_carga_id, termo_fiel_depositario_data: @aquaviario_unidade_carga.termo_fiel_depositario_data, termo_fiel_depositario_id: @aquaviario_unidade_carga.termo_fiel_depositario_id, termo_lacre_id: @aquaviario_unidade_carga.termo_lacre_id, termo_vistoria_id: @aquaviario_unidade_carga.termo_vistoria_id, tipo_unidade_id: @aquaviario_unidade_carga.tipo_unidade_id, usuario_alterou_id: @aquaviario_unidade_carga.usuario_alterou_id, usuario_id: @aquaviario_unidade_carga.usuario_id }
    assert_redirected_to aquaviario_unidade_carga_path(assigns(:aquaviario_unidade_carga))
  end

  test "should destroy aquaviario_unidade_carga" do
    assert_difference('Aquaviario::UnidadeCarga.count', -1) do
      delete :destroy, id: @aquaviario_unidade_carga
    end

    assert_redirected_to aquaviario_unidade_cargas_path
  end
end

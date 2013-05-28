require 'test_helper'

class Core::TermoVistoriaControllerTest < ActionController::TestCase
  setup do
    @core_termo_vistorium = core_termo_vistoria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_termo_vistoria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_termo_vistorium" do
    assert_difference('Core::TermoVistorium.count') do
      post :create, core_termo_vistorium: { dad_id: @core_termo_vistorium.dad_id, observacoes: @core_termo_vistorium.observacoes, termo_contagem: @core_termo_vistorium.termo_contagem, termo_vistoria_data_final: @core_termo_vistorium.termo_vistoria_data_final, termo_vistoria_data_inicio: @core_termo_vistorium.termo_vistoria_data_inicio, unidade_carga_id: @core_termo_vistorium.unidade_carga_id }
    end

    assert_redirected_to core_termo_vistorium_path(assigns(:core_termo_vistorium))
  end

  test "should show core_termo_vistorium" do
    get :show, id: @core_termo_vistorium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_termo_vistorium
    assert_response :success
  end

  test "should update core_termo_vistorium" do
    put :update, id: @core_termo_vistorium, core_termo_vistorium: { dad_id: @core_termo_vistorium.dad_id, observacoes: @core_termo_vistorium.observacoes, termo_contagem: @core_termo_vistorium.termo_contagem, termo_vistoria_data_final: @core_termo_vistorium.termo_vistoria_data_final, termo_vistoria_data_inicio: @core_termo_vistorium.termo_vistoria_data_inicio, unidade_carga_id: @core_termo_vistorium.unidade_carga_id }
    assert_redirected_to core_termo_vistorium_path(assigns(:core_termo_vistorium))
  end

  test "should destroy core_termo_vistorium" do
    assert_difference('Core::TermoVistorium.count', -1) do
      delete :destroy, id: @core_termo_vistorium
    end

    assert_redirected_to core_termo_vistoria_path
  end
end

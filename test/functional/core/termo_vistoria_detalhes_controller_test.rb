require 'test_helper'

class Core::TermoVistoriaDetalhesControllerTest < ActionController::TestCase
  setup do
    @core_termo_vistoria_detalhe = core_termo_vistoria_detalhes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_termo_vistoria_detalhes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_termo_vistoria_detalhe" do
    assert_difference('Core::TermoVistoriaDetalhe.count') do
      post :create, core_termo_vistoria_detalhe: { observacoes: @core_termo_vistoria_detalhe.observacoes, termo_vistoria_id: @core_termo_vistoria_detalhe.termo_vistoria_id, termo_vistoria_tipo_detalhe_id: @core_termo_vistoria_detalhe.termo_vistoria_tipo_detalhe_id, valor_devido: @core_termo_vistoria_detalhe.valor_devido }
    end

    assert_redirected_to core_termo_vistoria_detalhe_path(assigns(:core_termo_vistoria_detalhe))
  end

  test "should show core_termo_vistoria_detalhe" do
    get :show, id: @core_termo_vistoria_detalhe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_termo_vistoria_detalhe
    assert_response :success
  end

  test "should update core_termo_vistoria_detalhe" do
    put :update, id: @core_termo_vistoria_detalhe, core_termo_vistoria_detalhe: { observacoes: @core_termo_vistoria_detalhe.observacoes, termo_vistoria_id: @core_termo_vistoria_detalhe.termo_vistoria_id, termo_vistoria_tipo_detalhe_id: @core_termo_vistoria_detalhe.termo_vistoria_tipo_detalhe_id, valor_devido: @core_termo_vistoria_detalhe.valor_devido }
    assert_redirected_to core_termo_vistoria_detalhe_path(assigns(:core_termo_vistoria_detalhe))
  end

  test "should destroy core_termo_vistoria_detalhe" do
    assert_difference('Core::TermoVistoriaDetalhe.count', -1) do
      delete :destroy, id: @core_termo_vistoria_detalhe
    end

    assert_redirected_to core_termo_vistoria_detalhes_path
  end
end

require 'test_helper'

class Core::TipoDetalhesControllerTest < ActionController::TestCase
  setup do
    @core_tipo_detalhe = core_tipo_detalhes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_tipo_detalhes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_tipo_detalhe" do
    assert_difference('Core::TipoDetalhe.count') do
      post :create, core_tipo_detalhe: { descricao: @core_tipo_detalhe.descricao }
    end

    assert_redirected_to core_tipo_detalhe_path(assigns(:core_tipo_detalhe))
  end

  test "should show core_tipo_detalhe" do
    get :show, id: @core_tipo_detalhe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_tipo_detalhe
    assert_response :success
  end

  test "should update core_tipo_detalhe" do
    put :update, id: @core_tipo_detalhe, core_tipo_detalhe: { descricao: @core_tipo_detalhe.descricao }
    assert_redirected_to core_tipo_detalhe_path(assigns(:core_tipo_detalhe))
  end

  test "should destroy core_tipo_detalhe" do
    assert_difference('Core::TipoDetalhe.count', -1) do
      delete :destroy, id: @core_tipo_detalhe
    end

    assert_redirected_to core_tipo_detalhes_path
  end
end

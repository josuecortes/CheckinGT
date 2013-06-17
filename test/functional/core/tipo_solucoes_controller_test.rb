require 'test_helper'

class Core::TipoSolucoesControllerTest < ActionController::TestCase
  setup do
    @core_tipo_solucao = core_tipo_solucoes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_tipo_solucoes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_tipo_solucao" do
    assert_difference('Core::TipoSolucao.count') do
      post :create, core_tipo_solucao: { descricao: @core_tipo_solucao.descricao }
    end

    assert_redirected_to core_tipo_solucao_path(assigns(:core_tipo_solucao))
  end

  test "should show core_tipo_solucao" do
    get :show, id: @core_tipo_solucao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_tipo_solucao
    assert_response :success
  end

  test "should update core_tipo_solucao" do
    put :update, id: @core_tipo_solucao, core_tipo_solucao: { descricao: @core_tipo_solucao.descricao }
    assert_redirected_to core_tipo_solucao_path(assigns(:core_tipo_solucao))
  end

  test "should destroy core_tipo_solucao" do
    assert_difference('Core::TipoSolucao.count', -1) do
      delete :destroy, id: @core_tipo_solucao
    end

    assert_redirected_to core_tipo_solucoes_path
  end
end

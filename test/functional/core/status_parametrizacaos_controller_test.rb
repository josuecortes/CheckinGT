require 'test_helper'

class Core::StatusParametrizacaosControllerTest < ActionController::TestCase
  setup do
    @core_status_parametrizacao = core_status_parametrizacaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_status_parametrizacaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_status_parametrizacao" do
    assert_difference('Core::StatusParametrizacao.count') do
      post :create, core_status_parametrizacao: { descricao: @core_status_parametrizacao.descricao }
    end

    assert_redirected_to core_status_parametrizacao_path(assigns(:core_status_parametrizacao))
  end

  test "should show core_status_parametrizacao" do
    get :show, id: @core_status_parametrizacao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_status_parametrizacao
    assert_response :success
  end

  test "should update core_status_parametrizacao" do
    put :update, id: @core_status_parametrizacao, core_status_parametrizacao: { descricao: @core_status_parametrizacao.descricao }
    assert_redirected_to core_status_parametrizacao_path(assigns(:core_status_parametrizacao))
  end

  test "should destroy core_status_parametrizacao" do
    assert_difference('Core::StatusParametrizacao.count', -1) do
      delete :destroy, id: @core_status_parametrizacao
    end

    assert_redirected_to core_status_parametrizacaos_path
  end
end

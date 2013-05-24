require 'test_helper'

class Core::StatusUnidadeCargasControllerTest < ActionController::TestCase
  setup do
    @core_status_unidade_carga = core_status_unidade_cargas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_status_unidade_cargas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_status_unidade_carga" do
    assert_difference('Core::StatusUnidadeCarga.count') do
      post :create, core_status_unidade_carga: { descricao: @core_status_unidade_carga.descricao }
    end

    assert_redirected_to core_status_unidade_carga_path(assigns(:core_status_unidade_carga))
  end

  test "should show core_status_unidade_carga" do
    get :show, id: @core_status_unidade_carga
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_status_unidade_carga
    assert_response :success
  end

  test "should update core_status_unidade_carga" do
    put :update, id: @core_status_unidade_carga, core_status_unidade_carga: { descricao: @core_status_unidade_carga.descricao }
    assert_redirected_to core_status_unidade_carga_path(assigns(:core_status_unidade_carga))
  end

  test "should destroy core_status_unidade_carga" do
    assert_difference('Core::StatusUnidadeCarga.count', -1) do
      delete :destroy, id: @core_status_unidade_carga
    end

    assert_redirected_to core_status_unidade_cargas_path
  end
end

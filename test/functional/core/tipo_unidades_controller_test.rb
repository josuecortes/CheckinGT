require 'test_helper'

class Core::TipoUnidadesControllerTest < ActionController::TestCase
  setup do
    @core_tipo_unidade = core_tipo_unidades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_tipo_unidades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_tipo_unidade" do
    assert_difference('Core::TipoUnidade.count') do
      post :create, core_tipo_unidade: { descricao: @core_tipo_unidade.descricao }
    end

    assert_redirected_to core_tipo_unidade_path(assigns(:core_tipo_unidade))
  end

  test "should show core_tipo_unidade" do
    get :show, id: @core_tipo_unidade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_tipo_unidade
    assert_response :success
  end

  test "should update core_tipo_unidade" do
    put :update, id: @core_tipo_unidade, core_tipo_unidade: { descricao: @core_tipo_unidade.descricao }
    assert_redirected_to core_tipo_unidade_path(assigns(:core_tipo_unidade))
  end

  test "should destroy core_tipo_unidade" do
    assert_difference('Core::TipoUnidade.count', -1) do
      delete :destroy, id: @core_tipo_unidade
    end

    assert_redirected_to core_tipo_unidades_path
  end
end

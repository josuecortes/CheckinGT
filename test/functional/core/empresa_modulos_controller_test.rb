require 'test_helper'

class Core::EmpresaModulosControllerTest < ActionController::TestCase
  setup do
    @core_empresa_modulo = core_empresa_modulos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_empresa_modulos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_empresa_modulo" do
    assert_difference('Core::EmpresaModulo.count') do
      post :create, core_empresa_modulo: { empresa_id: @core_empresa_modulo.empresa_id, modulo_id: @core_empresa_modulo.modulo_id, status: @core_empresa_modulo.status }
    end

    assert_redirected_to core_empresa_modulo_path(assigns(:core_empresa_modulo))
  end

  test "should show core_empresa_modulo" do
    get :show, id: @core_empresa_modulo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_empresa_modulo
    assert_response :success
  end

  test "should update core_empresa_modulo" do
    put :update, id: @core_empresa_modulo, core_empresa_modulo: { empresa_id: @core_empresa_modulo.empresa_id, modulo_id: @core_empresa_modulo.modulo_id, status: @core_empresa_modulo.status }
    assert_redirected_to core_empresa_modulo_path(assigns(:core_empresa_modulo))
  end

  test "should destroy core_empresa_modulo" do
    assert_difference('Core::EmpresaModulo.count', -1) do
      delete :destroy, id: @core_empresa_modulo
    end

    assert_redirected_to core_empresa_modulos_path
  end
end

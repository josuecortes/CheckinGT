require 'test_helper'

class Core::TipoDocumentoEletronicosControllerTest < ActionController::TestCase
  setup do
    @core_tipo_documento_eletronico = core_tipo_documento_eletronicos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_tipo_documento_eletronicos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_tipo_documento_eletronico" do
    assert_difference('Core::TipoDocumentoEletronico.count') do
      post :create, core_tipo_documento_eletronico: { descricao: @core_tipo_documento_eletronico.descricao }
    end

    assert_redirected_to core_tipo_documento_eletronico_path(assigns(:core_tipo_documento_eletronico))
  end

  test "should show core_tipo_documento_eletronico" do
    get :show, id: @core_tipo_documento_eletronico
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_tipo_documento_eletronico
    assert_response :success
  end

  test "should update core_tipo_documento_eletronico" do
    put :update, id: @core_tipo_documento_eletronico, core_tipo_documento_eletronico: { descricao: @core_tipo_documento_eletronico.descricao }
    assert_redirected_to core_tipo_documento_eletronico_path(assigns(:core_tipo_documento_eletronico))
  end

  test "should destroy core_tipo_documento_eletronico" do
    assert_difference('Core::TipoDocumentoEletronico.count', -1) do
      delete :destroy, id: @core_tipo_documento_eletronico
    end

    assert_redirected_to core_tipo_documento_eletronicos_path
  end
end

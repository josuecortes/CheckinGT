require 'test_helper'

class Core::StatusSeloFiscalTiposControllerTest < ActionController::TestCase
  setup do
    @core_status_selo_fiscal_tipo = core_status_selo_fiscal_tipos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_status_selo_fiscal_tipos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_status_selo_fiscal_tipo" do
    assert_difference('Core::StatusSeloFiscalTipo.count') do
      post :create, core_status_selo_fiscal_tipo: { descricao: @core_status_selo_fiscal_tipo.descricao }
    end

    assert_redirected_to core_status_selo_fiscal_tipo_path(assigns(:core_status_selo_fiscal_tipo))
  end

  test "should show core_status_selo_fiscal_tipo" do
    get :show, id: @core_status_selo_fiscal_tipo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_status_selo_fiscal_tipo
    assert_response :success
  end

  test "should update core_status_selo_fiscal_tipo" do
    put :update, id: @core_status_selo_fiscal_tipo, core_status_selo_fiscal_tipo: { descricao: @core_status_selo_fiscal_tipo.descricao }
    assert_redirected_to core_status_selo_fiscal_tipo_path(assigns(:core_status_selo_fiscal_tipo))
  end

  test "should destroy core_status_selo_fiscal_tipo" do
    assert_difference('Core::StatusSeloFiscalTipo.count', -1) do
      delete :destroy, id: @core_status_selo_fiscal_tipo
    end

    assert_redirected_to core_status_selo_fiscal_tipos_path
  end
end

require 'test_helper'

class Core::SeloFiscalsControllerTest < ActionController::TestCase
  setup do
    @core_selo_fiscal = core_selo_fiscals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_selo_fiscals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_selo_fiscal" do
    assert_difference('Core::SeloFiscal.count') do
      post :create, core_selo_fiscal: { descricao: @core_selo_fiscal.descricao, selo_fiscal_data: @core_selo_fiscal.selo_fiscal_data, status_selo_fiscal_tipo_id: @core_selo_fiscal.status_selo_fiscal_tipo_id }
    end

    assert_redirected_to core_selo_fiscal_path(assigns(:core_selo_fiscal))
  end

  test "should show core_selo_fiscal" do
    get :show, id: @core_selo_fiscal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_selo_fiscal
    assert_response :success
  end

  test "should update core_selo_fiscal" do
    put :update, id: @core_selo_fiscal, core_selo_fiscal: { descricao: @core_selo_fiscal.descricao, selo_fiscal_data: @core_selo_fiscal.selo_fiscal_data, status_selo_fiscal_tipo_id: @core_selo_fiscal.status_selo_fiscal_tipo_id }
    assert_redirected_to core_selo_fiscal_path(assigns(:core_selo_fiscal))
  end

  test "should destroy core_selo_fiscal" do
    assert_difference('Core::SeloFiscal.count', -1) do
      delete :destroy, id: @core_selo_fiscal
    end

    assert_redirected_to core_selo_fiscals_path
  end
end

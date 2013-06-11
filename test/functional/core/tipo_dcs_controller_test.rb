require 'test_helper'

class Core::TipoDcsControllerTest < ActionController::TestCase
  setup do
    @core_tipo_dc = core_tipo_dcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_tipo_dcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_tipo_dc" do
    assert_difference('Core::TipoDc.count') do
      post :create, core_tipo_dc: { descricao: @core_tipo_dc.descricao }
    end

    assert_redirected_to core_tipo_dc_path(assigns(:core_tipo_dc))
  end

  test "should show core_tipo_dc" do
    get :show, id: @core_tipo_dc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_tipo_dc
    assert_response :success
  end

  test "should update core_tipo_dc" do
    put :update, id: @core_tipo_dc, core_tipo_dc: { descricao: @core_tipo_dc.descricao }
    assert_redirected_to core_tipo_dc_path(assigns(:core_tipo_dc))
  end

  test "should destroy core_tipo_dc" do
    assert_difference('Core::TipoDc.count', -1) do
      delete :destroy, id: @core_tipo_dc
    end

    assert_redirected_to core_tipo_dcs_path
  end
end

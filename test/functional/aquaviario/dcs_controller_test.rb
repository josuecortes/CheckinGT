require 'test_helper'

class Aquaviario::DcsControllerTest < ActionController::TestCase
  setup do
    @aquaviario_dc = aquaviario_dcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aquaviario_dcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aquaviario_dc" do
    assert_difference('Aquaviario::Dc.count') do
      post :create, aquaviario_dc: { : @aquaviario_dc., dad_id: @aquaviario_dc.dad_id, documento: @aquaviario_dc.documento, rodoviario_id: @aquaviario_dc.rodoviario_id, tipo_dc_id: @aquaviario_dc.tipo_dc_id, unidade_carga_id: @aquaviario_dc.unidade_carga_id }
    end

    assert_redirected_to aquaviario_dc_path(assigns(:aquaviario_dc))
  end

  test "should show aquaviario_dc" do
    get :show, id: @aquaviario_dc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aquaviario_dc
    assert_response :success
  end

  test "should update aquaviario_dc" do
    put :update, id: @aquaviario_dc, aquaviario_dc: { : @aquaviario_dc., dad_id: @aquaviario_dc.dad_id, documento: @aquaviario_dc.documento, rodoviario_id: @aquaviario_dc.rodoviario_id, tipo_dc_id: @aquaviario_dc.tipo_dc_id, unidade_carga_id: @aquaviario_dc.unidade_carga_id }
    assert_redirected_to aquaviario_dc_path(assigns(:aquaviario_dc))
  end

  test "should destroy aquaviario_dc" do
    assert_difference('Aquaviario::Dc.count', -1) do
      delete :destroy, id: @aquaviario_dc
    end

    assert_redirected_to aquaviario_dcs_path
  end
end

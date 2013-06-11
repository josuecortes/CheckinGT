require 'test_helper'

class Core::PatioPortosControllerTest < ActionController::TestCase
  setup do
    @core_patio_porto = core_patio_portos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_patio_portos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_patio_porto" do
    assert_difference('Core::PatioPorto.count') do
      post :create, core_patio_porto: { descricao: @core_patio_porto.descricao, empresa_id: @core_patio_porto.empresa_id, endereco: @core_patio_porto.endereco }
    end

    assert_redirected_to core_patio_porto_path(assigns(:core_patio_porto))
  end

  test "should show core_patio_porto" do
    get :show, id: @core_patio_porto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_patio_porto
    assert_response :success
  end

  test "should update core_patio_porto" do
    put :update, id: @core_patio_porto, core_patio_porto: { descricao: @core_patio_porto.descricao, empresa_id: @core_patio_porto.empresa_id, endereco: @core_patio_porto.endereco }
    assert_redirected_to core_patio_porto_path(assigns(:core_patio_porto))
  end

  test "should destroy core_patio_porto" do
    assert_difference('Core::PatioPorto.count', -1) do
      delete :destroy, id: @core_patio_porto
    end

    assert_redirected_to core_patio_portos_path
  end
end

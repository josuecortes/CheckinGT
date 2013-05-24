require 'test_helper'

class Core::PortosControllerTest < ActionController::TestCase
  setup do
    @core_porto = core_portos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_portos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_porto" do
    assert_difference('Core::Porto.count') do
      post :create, core_porto: { cidade: @core_porto.cidade, empresa_id: @core_porto.empresa_id, endereco: @core_porto.endereco, regsitro_imovel: @core_porto.regsitro_imovel, status: @core_porto.status, uf_id: @core_porto.uf_id }
    end

    assert_redirected_to core_porto_path(assigns(:core_porto))
  end

  test "should show core_porto" do
    get :show, id: @core_porto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_porto
    assert_response :success
  end

  test "should update core_porto" do
    put :update, id: @core_porto, core_porto: { cidade: @core_porto.cidade, empresa_id: @core_porto.empresa_id, endereco: @core_porto.endereco, regsitro_imovel: @core_porto.regsitro_imovel, status: @core_porto.status, uf_id: @core_porto.uf_id }
    assert_redirected_to core_porto_path(assigns(:core_porto))
  end

  test "should destroy core_porto" do
    assert_difference('Core::Porto.count', -1) do
      delete :destroy, id: @core_porto
    end

    assert_redirected_to core_portos_path
  end
end

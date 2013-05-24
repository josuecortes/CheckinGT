require 'test_helper'

class Core::AquaviariosControllerTest < ActionController::TestCase
  setup do
    @core_aquaviario = core_aquaviarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_aquaviarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_aquaviario" do
    assert_difference('Core::Aquaviario.count') do
      post :create, core_aquaviario: { empresa_id: @core_aquaviario.empresa_id, registro_antaq: @core_aquaviario.registro_antaq, status: @core_aquaviario.status }
    end

    assert_redirected_to core_aquaviario_path(assigns(:core_aquaviario))
  end

  test "should show core_aquaviario" do
    get :show, id: @core_aquaviario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_aquaviario
    assert_response :success
  end

  test "should update core_aquaviario" do
    put :update, id: @core_aquaviario, core_aquaviario: { empresa_id: @core_aquaviario.empresa_id, registro_antaq: @core_aquaviario.registro_antaq, status: @core_aquaviario.status }
    assert_redirected_to core_aquaviario_path(assigns(:core_aquaviario))
  end

  test "should destroy core_aquaviario" do
    assert_difference('Core::Aquaviario.count', -1) do
      delete :destroy, id: @core_aquaviario
    end

    assert_redirected_to core_aquaviarios_path
  end
end

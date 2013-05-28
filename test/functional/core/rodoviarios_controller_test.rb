require 'test_helper'

class Core::RodoviariosControllerTest < ActionController::TestCase
  setup do
    @core_rodoviario = core_rodoviarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_rodoviarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_rodoviario" do
    assert_difference('Core::Rodoviario.count') do
      post :create, core_rodoviario: { empresa_id: @core_rodoviario.empresa_id, registro_antt: @core_rodoviario.registro_antt, status: @core_rodoviario.status }
    end

    assert_redirected_to core_rodoviario_path(assigns(:core_rodoviario))
  end

  test "should show core_rodoviario" do
    get :show, id: @core_rodoviario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_rodoviario
    assert_response :success
  end

  test "should update core_rodoviario" do
    put :update, id: @core_rodoviario, core_rodoviario: { empresa_id: @core_rodoviario.empresa_id, registro_antt: @core_rodoviario.registro_antt, status: @core_rodoviario.status }
    assert_redirected_to core_rodoviario_path(assigns(:core_rodoviario))
  end

  test "should destroy core_rodoviario" do
    assert_difference('Core::Rodoviario.count', -1) do
      delete :destroy, id: @core_rodoviario
    end

    assert_redirected_to core_rodoviarios_path
  end
end

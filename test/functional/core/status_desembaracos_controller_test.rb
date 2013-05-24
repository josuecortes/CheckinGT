require 'test_helper'

class Core::StatusDesembaracosControllerTest < ActionController::TestCase
  setup do
    @core_status_desembaraco = core_status_desembaracos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_status_desembaracos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_status_desembaraco" do
    assert_difference('Core::StatusDesembaraco.count') do
      post :create, core_status_desembaraco: { descricao: @core_status_desembaraco.descricao }
    end

    assert_redirected_to core_status_desembaraco_path(assigns(:core_status_desembaraco))
  end

  test "should show core_status_desembaraco" do
    get :show, id: @core_status_desembaraco
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_status_desembaraco
    assert_response :success
  end

  test "should update core_status_desembaraco" do
    put :update, id: @core_status_desembaraco, core_status_desembaraco: { descricao: @core_status_desembaraco.descricao }
    assert_redirected_to core_status_desembaraco_path(assigns(:core_status_desembaraco))
  end

  test "should destroy core_status_desembaraco" do
    assert_difference('Core::StatusDesembaraco.count', -1) do
      delete :destroy, id: @core_status_desembaraco
    end

    assert_redirected_to core_status_desembaracos_path
  end
end

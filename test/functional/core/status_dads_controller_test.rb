require 'test_helper'

class Core::StatusDadsControllerTest < ActionController::TestCase
  setup do
    @core_status_dad = core_status_dads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_status_dads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_status_dad" do
    assert_difference('Core::StatusDad.count') do
      post :create, core_status_dad: { descricao: @core_status_dad.descricao }
    end

    assert_redirected_to core_status_dad_path(assigns(:core_status_dad))
  end

  test "should show core_status_dad" do
    get :show, id: @core_status_dad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_status_dad
    assert_response :success
  end

  test "should update core_status_dad" do
    put :update, id: @core_status_dad, core_status_dad: { descricao: @core_status_dad.descricao }
    assert_redirected_to core_status_dad_path(assigns(:core_status_dad))
  end

  test "should destroy core_status_dad" do
    assert_difference('Core::StatusDad.count', -1) do
      delete :destroy, id: @core_status_dad
    end

    assert_redirected_to core_status_dads_path
  end
end

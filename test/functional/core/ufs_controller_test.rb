require 'test_helper'

class Core::UfsControllerTest < ActionController::TestCase
  setup do
    @core_uf = core_ufs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_ufs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_uf" do
    assert_difference('Core::Uf.count') do
      post :create, core_uf: { sigla: @core_uf.sigla }
    end

    assert_redirected_to core_uf_path(assigns(:core_uf))
  end

  test "should show core_uf" do
    get :show, id: @core_uf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_uf
    assert_response :success
  end

  test "should update core_uf" do
    put :update, id: @core_uf, core_uf: { sigla: @core_uf.sigla }
    assert_redirected_to core_uf_path(assigns(:core_uf))
  end

  test "should destroy core_uf" do
    assert_difference('Core::Uf.count', -1) do
      delete :destroy, id: @core_uf
    end

    assert_redirected_to core_ufs_path
  end
end

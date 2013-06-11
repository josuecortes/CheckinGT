require 'test_helper'

class Core::StatusTermoFdsControllerTest < ActionController::TestCase
  setup do
    @core_status_termo_fd = core_status_termo_fds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_status_termo_fds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_status_termo_fd" do
    assert_difference('Core::StatusTermoFd.count') do
      post :create, core_status_termo_fd: { descricao: @core_status_termo_fd.descricao }
    end

    assert_redirected_to core_status_termo_fd_path(assigns(:core_status_termo_fd))
  end

  test "should show core_status_termo_fd" do
    get :show, id: @core_status_termo_fd
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_status_termo_fd
    assert_response :success
  end

  test "should update core_status_termo_fd" do
    put :update, id: @core_status_termo_fd, core_status_termo_fd: { descricao: @core_status_termo_fd.descricao }
    assert_redirected_to core_status_termo_fd_path(assigns(:core_status_termo_fd))
  end

  test "should destroy core_status_termo_fd" do
    assert_difference('Core::StatusTermoFd.count', -1) do
      delete :destroy, id: @core_status_termo_fd
    end

    assert_redirected_to core_status_termo_fds_path
  end
end

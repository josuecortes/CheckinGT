require 'test_helper'

class Core::TermoFdsControllerTest < ActionController::TestCase
  setup do
    @core_termo_fd = core_termo_fds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_termo_fds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_termo_fd" do
    assert_difference('Core::TermoFd.count') do
      post :create, core_termo_fd: { fechamento_data: @core_termo_fd.fechamento_data, fechamento_descricao: @core_termo_fd.fechamento_descricao, fisco_data_autorizacao: @core_termo_fd.fisco_data_autorizacao, fisco_fechamento_usuario_id: @core_termo_fd.fisco_fechamento_usuario_id, fisco_usuario_id: @core_termo_fd.fisco_usuario_id, porto_data_autorizacao: @core_termo_fd.porto_data_autorizacao, porto_usuario_id: @core_termo_fd.porto_usuario_id, rodoviario_data_autorizacao: @core_termo_fd.rodoviario_data_autorizacao, rodoviario_id: @core_termo_fd.rodoviario_id, rodoviario_usuario_id: @core_termo_fd.rodoviario_usuario_id, status_termo_fiel_depositario_id: @core_termo_fd.status_termo_fiel_depositario_id }
    end

    assert_redirected_to core_termo_fd_path(assigns(:core_termo_fd))
  end

  test "should show core_termo_fd" do
    get :show, id: @core_termo_fd
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_termo_fd
    assert_response :success
  end

  test "should update core_termo_fd" do
    put :update, id: @core_termo_fd, core_termo_fd: { fechamento_data: @core_termo_fd.fechamento_data, fechamento_descricao: @core_termo_fd.fechamento_descricao, fisco_data_autorizacao: @core_termo_fd.fisco_data_autorizacao, fisco_fechamento_usuario_id: @core_termo_fd.fisco_fechamento_usuario_id, fisco_usuario_id: @core_termo_fd.fisco_usuario_id, porto_data_autorizacao: @core_termo_fd.porto_data_autorizacao, porto_usuario_id: @core_termo_fd.porto_usuario_id, rodoviario_data_autorizacao: @core_termo_fd.rodoviario_data_autorizacao, rodoviario_id: @core_termo_fd.rodoviario_id, rodoviario_usuario_id: @core_termo_fd.rodoviario_usuario_id, status_termo_fiel_depositario_id: @core_termo_fd.status_termo_fiel_depositario_id }
    assert_redirected_to core_termo_fd_path(assigns(:core_termo_fd))
  end

  test "should destroy core_termo_fd" do
    assert_difference('Core::TermoFd.count', -1) do
      delete :destroy, id: @core_termo_fd
    end

    assert_redirected_to core_termo_fds_path
  end
end

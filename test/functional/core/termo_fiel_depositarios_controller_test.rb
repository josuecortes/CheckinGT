require 'test_helper'

class Core::TermoFielDepositariosControllerTest < ActionController::TestCase
  setup do
    @core_termo_fiel_depositario = core_termo_fiel_depositarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_termo_fiel_depositarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_termo_fiel_depositario" do
    assert_difference('Core::TermoFielDepositario.count') do
      post :create, core_termo_fiel_depositario: { fechamento_data: @core_termo_fiel_depositario.fechamento_data, fechamento_descricao: @core_termo_fiel_depositario.fechamento_descricao, fisco_data_autorizacao: @core_termo_fiel_depositario.fisco_data_autorizacao, fisco_fechamento_usuario_id: @core_termo_fiel_depositario.fisco_fechamento_usuario_id, fisco_usuario_id: @core_termo_fiel_depositario.fisco_usuario_id, porto_data_autorizacao: @core_termo_fiel_depositario.porto_data_autorizacao, porto_usuario_id: @core_termo_fiel_depositario.porto_usuario_id, rodoviario_data_autorizacao: @core_termo_fiel_depositario.rodoviario_data_autorizacao, rodoviario_id: @core_termo_fiel_depositario.rodoviario_id, rodoviario_usuario_id: @core_termo_fiel_depositario.rodoviario_usuario_id, status_termo_fiel_depositario_id: @core_termo_fiel_depositario.status_termo_fiel_depositario_id }
    end

    assert_redirected_to core_termo_fiel_depositario_path(assigns(:core_termo_fiel_depositario))
  end

  test "should show core_termo_fiel_depositario" do
    get :show, id: @core_termo_fiel_depositario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_termo_fiel_depositario
    assert_response :success
  end

  test "should update core_termo_fiel_depositario" do
    put :update, id: @core_termo_fiel_depositario, core_termo_fiel_depositario: { fechamento_data: @core_termo_fiel_depositario.fechamento_data, fechamento_descricao: @core_termo_fiel_depositario.fechamento_descricao, fisco_data_autorizacao: @core_termo_fiel_depositario.fisco_data_autorizacao, fisco_fechamento_usuario_id: @core_termo_fiel_depositario.fisco_fechamento_usuario_id, fisco_usuario_id: @core_termo_fiel_depositario.fisco_usuario_id, porto_data_autorizacao: @core_termo_fiel_depositario.porto_data_autorizacao, porto_usuario_id: @core_termo_fiel_depositario.porto_usuario_id, rodoviario_data_autorizacao: @core_termo_fiel_depositario.rodoviario_data_autorizacao, rodoviario_id: @core_termo_fiel_depositario.rodoviario_id, rodoviario_usuario_id: @core_termo_fiel_depositario.rodoviario_usuario_id, status_termo_fiel_depositario_id: @core_termo_fiel_depositario.status_termo_fiel_depositario_id }
    assert_redirected_to core_termo_fiel_depositario_path(assigns(:core_termo_fiel_depositario))
  end

  test "should destroy core_termo_fiel_depositario" do
    assert_difference('Core::TermoFielDepositario.count', -1) do
      delete :destroy, id: @core_termo_fiel_depositario
    end

    assert_redirected_to core_termo_fiel_depositarios_path
  end
end

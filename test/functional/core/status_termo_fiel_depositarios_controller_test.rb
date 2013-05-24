require 'test_helper'

class Core::StatusTermoFielDepositariosControllerTest < ActionController::TestCase
  setup do
    @core_status_termo_fiel_depositario = core_status_termo_fiel_depositarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_status_termo_fiel_depositarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_status_termo_fiel_depositario" do
    assert_difference('Core::StatusTermoFielDepositario.count') do
      post :create, core_status_termo_fiel_depositario: { descricao: @core_status_termo_fiel_depositario.descricao }
    end

    assert_redirected_to core_status_termo_fiel_depositario_path(assigns(:core_status_termo_fiel_depositario))
  end

  test "should show core_status_termo_fiel_depositario" do
    get :show, id: @core_status_termo_fiel_depositario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_status_termo_fiel_depositario
    assert_response :success
  end

  test "should update core_status_termo_fiel_depositario" do
    put :update, id: @core_status_termo_fiel_depositario, core_status_termo_fiel_depositario: { descricao: @core_status_termo_fiel_depositario.descricao }
    assert_redirected_to core_status_termo_fiel_depositario_path(assigns(:core_status_termo_fiel_depositario))
  end

  test "should destroy core_status_termo_fiel_depositario" do
    assert_difference('Core::StatusTermoFielDepositario.count', -1) do
      delete :destroy, id: @core_status_termo_fiel_depositario
    end

    assert_redirected_to core_status_termo_fiel_depositarios_path
  end
end

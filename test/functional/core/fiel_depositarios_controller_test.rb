require 'test_helper'

class Core::FielDepositariosControllerTest < ActionController::TestCase
  setup do
    @core_fiel_depositario = core_fiel_depositarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_fiel_depositarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_fiel_depositario" do
    assert_difference('Core::FielDepositario.count') do
      post :create, core_fiel_depositario: { cpf: @core_fiel_depositario.cpf, empresa_id: @core_fiel_depositario.empresa_id, nome: @core_fiel_depositario.nome }
    end

    assert_redirected_to core_fiel_depositario_path(assigns(:core_fiel_depositario))
  end

  test "should show core_fiel_depositario" do
    get :show, id: @core_fiel_depositario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_fiel_depositario
    assert_response :success
  end

  test "should update core_fiel_depositario" do
    put :update, id: @core_fiel_depositario, core_fiel_depositario: { cpf: @core_fiel_depositario.cpf, empresa_id: @core_fiel_depositario.empresa_id, nome: @core_fiel_depositario.nome }
    assert_redirected_to core_fiel_depositario_path(assigns(:core_fiel_depositario))
  end

  test "should destroy core_fiel_depositario" do
    assert_difference('Core::FielDepositario.count', -1) do
      delete :destroy, id: @core_fiel_depositario
    end

    assert_redirected_to core_fiel_depositarios_path
  end
end

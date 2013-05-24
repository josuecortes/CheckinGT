require 'test_helper'

class Core::StatusProcessamentosControllerTest < ActionController::TestCase
  setup do
    @core_status_processamento = core_status_processamentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_status_processamentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_status_processamento" do
    assert_difference('Core::StatusProcessamento.count') do
      post :create, core_status_processamento: { descricao: @core_status_processamento.descricao }
    end

    assert_redirected_to core_status_processamento_path(assigns(:core_status_processamento))
  end

  test "should show core_status_processamento" do
    get :show, id: @core_status_processamento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_status_processamento
    assert_response :success
  end

  test "should update core_status_processamento" do
    put :update, id: @core_status_processamento, core_status_processamento: { descricao: @core_status_processamento.descricao }
    assert_redirected_to core_status_processamento_path(assigns(:core_status_processamento))
  end

  test "should destroy core_status_processamento" do
    assert_difference('Core::StatusProcessamento.count', -1) do
      delete :destroy, id: @core_status_processamento
    end

    assert_redirected_to core_status_processamentos_path
  end
end

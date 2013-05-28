require 'test_helper'

class Core::TermoLacresControllerTest < ActionController::TestCase
  setup do
    @core_termo_lacre = core_termo_lacres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_termo_lacres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_termo_lacre" do
    assert_difference('Core::TermoLacre.count') do
      post :create, core_termo_lacre: { dad_id: @core_termo_lacre.dad_id, fisco_cpf_id: @core_termo_lacre.fisco_cpf_id, observacoes: @core_termo_lacre.observacoes, termo_lacre_data: @core_termo_lacre.termo_lacre_data, termo_lacre_numero: @core_termo_lacre.termo_lacre_numero, unidade_carga_id: @core_termo_lacre.unidade_carga_id }
    end

    assert_redirected_to core_termo_lacre_path(assigns(:core_termo_lacre))
  end

  test "should show core_termo_lacre" do
    get :show, id: @core_termo_lacre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_termo_lacre
    assert_response :success
  end

  test "should update core_termo_lacre" do
    put :update, id: @core_termo_lacre, core_termo_lacre: { dad_id: @core_termo_lacre.dad_id, fisco_cpf_id: @core_termo_lacre.fisco_cpf_id, observacoes: @core_termo_lacre.observacoes, termo_lacre_data: @core_termo_lacre.termo_lacre_data, termo_lacre_numero: @core_termo_lacre.termo_lacre_numero, unidade_carga_id: @core_termo_lacre.unidade_carga_id }
    assert_redirected_to core_termo_lacre_path(assigns(:core_termo_lacre))
  end

  test "should destroy core_termo_lacre" do
    assert_difference('Core::TermoLacre.count', -1) do
      delete :destroy, id: @core_termo_lacre
    end

    assert_redirected_to core_termo_lacres_path
  end
end

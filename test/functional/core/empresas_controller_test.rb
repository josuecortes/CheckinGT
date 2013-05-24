require 'test_helper'

class Core::EmpresasControllerTest < ActionController::TestCase
  setup do
    @core_empresa = core_empresas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_empresas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_empresa" do
    assert_difference('Core::Empresa.count') do
      post :create, core_empresa: { cidade: @core_empresa.cidade, cnpj: @core_empresa.cnpj, descricao: @core_empresa.descricao, endereco: @core_empresa.endereco, inscricao_estadual: @core_empresa.inscricao_estadual, uf_id: @core_empresa.uf_id }
    end

    assert_redirected_to core_empresa_path(assigns(:core_empresa))
  end

  test "should show core_empresa" do
    get :show, id: @core_empresa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_empresa
    assert_response :success
  end

  test "should update core_empresa" do
    put :update, id: @core_empresa, core_empresa: { cidade: @core_empresa.cidade, cnpj: @core_empresa.cnpj, descricao: @core_empresa.descricao, endereco: @core_empresa.endereco, inscricao_estadual: @core_empresa.inscricao_estadual, uf_id: @core_empresa.uf_id }
    assert_redirected_to core_empresa_path(assigns(:core_empresa))
  end

  test "should destroy core_empresa" do
    assert_difference('Core::Empresa.count', -1) do
      delete :destroy, id: @core_empresa
    end

    assert_redirected_to core_empresas_path
  end
end

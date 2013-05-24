require 'test_helper'

class Aquaviario::DadsControllerTest < ActionController::TestCase
  setup do
    @aquaviario_dad = aquaviario_dads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aquaviario_dads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aquaviario_dad" do
    assert_difference('Aquaviario::Dad.count') do
      post :create, aquaviario_dad: { balsa: @aquaviario_dad.balsa, efetiva_chegada: @aquaviario_dad.efetiva_chegada, empresa_id: @aquaviario_dad.empresa_id, empurrador: @aquaviario_dad.empurrador, porto_destino_id: @aquaviario_dad.porto_destino_id, porto_origem: @aquaviario_dad.porto_origem, previsao_chegada: @aquaviario_dad.previsao_chegada, usuario_alterou_id: @aquaviario_dad.usuario_alterou_id, usuario_id: @aquaviario_dad.usuario_id }
    end

    assert_redirected_to aquaviario_dad_path(assigns(:aquaviario_dad))
  end

  test "should show aquaviario_dad" do
    get :show, id: @aquaviario_dad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aquaviario_dad
    assert_response :success
  end

  test "should update aquaviario_dad" do
    put :update, id: @aquaviario_dad, aquaviario_dad: { balsa: @aquaviario_dad.balsa, efetiva_chegada: @aquaviario_dad.efetiva_chegada, empresa_id: @aquaviario_dad.empresa_id, empurrador: @aquaviario_dad.empurrador, porto_destino_id: @aquaviario_dad.porto_destino_id, porto_origem: @aquaviario_dad.porto_origem, previsao_chegada: @aquaviario_dad.previsao_chegada, usuario_alterou_id: @aquaviario_dad.usuario_alterou_id, usuario_id: @aquaviario_dad.usuario_id }
    assert_redirected_to aquaviario_dad_path(assigns(:aquaviario_dad))
  end

  test "should destroy aquaviario_dad" do
    assert_difference('Aquaviario::Dad.count', -1) do
      delete :destroy, id: @aquaviario_dad
    end

    assert_redirected_to aquaviario_dads_path
  end
end

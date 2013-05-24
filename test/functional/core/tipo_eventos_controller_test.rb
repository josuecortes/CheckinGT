require 'test_helper'

class Core::TipoEventosControllerTest < ActionController::TestCase
  setup do
    @core_tipo_evento = core_tipo_eventos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:core_tipo_eventos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create core_tipo_evento" do
    assert_difference('Core::TipoEvento.count') do
      post :create, core_tipo_evento: { descricao: @core_tipo_evento.descricao }
    end

    assert_redirected_to core_tipo_evento_path(assigns(:core_tipo_evento))
  end

  test "should show core_tipo_evento" do
    get :show, id: @core_tipo_evento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @core_tipo_evento
    assert_response :success
  end

  test "should update core_tipo_evento" do
    put :update, id: @core_tipo_evento, core_tipo_evento: { descricao: @core_tipo_evento.descricao }
    assert_redirected_to core_tipo_evento_path(assigns(:core_tipo_evento))
  end

  test "should destroy core_tipo_evento" do
    assert_difference('Core::TipoEvento.count', -1) do
      delete :destroy, id: @core_tipo_evento
    end

    assert_redirected_to core_tipo_eventos_path
  end
end

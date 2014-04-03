require 'test_helper'

class ComentariosControllerTest < ActionController::TestCase
  setup do
    @comentario = comentarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:comentarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create comentario" do
    assert_difference('Comentario.count') do
      post :create, comentario: { estado: @comentario.estado, hilo_id: @comentario.hilo_id, texto: @comentario.texto, usuario_id: @comentario.usuario_id }
    end

    assert_redirected_to comentario_path(assigns(:comentario))
  end

  test "should show comentario" do
    get :show, id: @comentario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @comentario
    assert_response :success
  end

  test "should update comentario" do
    patch :update, id: @comentario, comentario: { estado: @comentario.estado, hilo_id: @comentario.hilo_id, texto: @comentario.texto, usuario_id: @comentario.usuario_id }
    assert_redirected_to comentario_path(assigns(:comentario))
  end

  test "should destroy comentario" do
    assert_difference('Comentario.count', -1) do
      delete :destroy, id: @comentario
    end

    assert_redirected_to comentarios_path
  end
end

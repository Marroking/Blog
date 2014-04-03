require 'test_helper'

class HilosControllerTest < ActionController::TestCase
  setup do
    @hilo = hilos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hilos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hilo" do
    assert_difference('Hilo.count') do
      post :create, hilo: { estado: @hilo.estado, texto: @hilo.texto, usuario_id: @hilo.usuario_id }
    end

    assert_redirected_to hilo_path(assigns(:hilo))
  end

  test "should show hilo" do
    get :show, id: @hilo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hilo
    assert_response :success
  end

  test "should update hilo" do
    patch :update, id: @hilo, hilo: { estado: @hilo.estado, texto: @hilo.texto, usuario_id: @hilo.usuario_id }
    assert_redirected_to hilo_path(assigns(:hilo))
  end

  test "should destroy hilo" do
    assert_difference('Hilo.count', -1) do
      delete :destroy, id: @hilo
    end

    assert_redirected_to hilos_path
  end
end

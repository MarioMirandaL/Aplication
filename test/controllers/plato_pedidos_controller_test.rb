require 'test_helper'

class PlatoPedidosControllerTest < ActionController::TestCase
  setup do
    @plato_pedido = plato_pedidos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plato_pedidos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plato_pedido" do
    assert_difference('PlatoPedido.count') do
      post :create, plato_pedido: { refenreces: @plato_pedido.refenreces, references: @plato_pedido.references }
    end

    assert_redirected_to plato_pedido_path(assigns(:plato_pedido))
  end

  test "should show plato_pedido" do
    get :show, id: @plato_pedido
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plato_pedido
    assert_response :success
  end

  test "should update plato_pedido" do
    patch :update, id: @plato_pedido, plato_pedido: { refenreces: @plato_pedido.refenreces, references: @plato_pedido.references }
    assert_redirected_to plato_pedido_path(assigns(:plato_pedido))
  end

  test "should destroy plato_pedido" do
    assert_difference('PlatoPedido.count', -1) do
      delete :destroy, id: @plato_pedido
    end

    assert_redirected_to plato_pedidos_path
  end
end

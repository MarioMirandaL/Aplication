require 'test_helper'

class ProductoPlatosControllerTest < ActionController::TestCase
  setup do
    @producto_plato = producto_platos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:producto_platos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create producto_plato" do
    assert_difference('ProductoPlato.count') do
      post :create, producto_plato: { plato_id: @producto_plato.plato_id, producto_id: @producto_plato.producto_id }
    end

    assert_redirected_to producto_plato_path(assigns(:producto_plato))
  end

  test "should show producto_plato" do
    get :show, id: @producto_plato
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @producto_plato
    assert_response :success
  end

  test "should update producto_plato" do
    patch :update, id: @producto_plato, producto_plato: { plato_id: @producto_plato.plato_id, producto_id: @producto_plato.producto_id }
    assert_redirected_to producto_plato_path(assigns(:producto_plato))
  end

  test "should destroy producto_plato" do
    assert_difference('ProductoPlato.count', -1) do
      delete :destroy, id: @producto_plato
    end

    assert_redirected_to producto_platos_path
  end
end

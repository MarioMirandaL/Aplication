require 'test_helper'

class DistribuidorsControllerTest < ActionController::TestCase
  setup do
    @distribuidor = distribuidors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:distribuidors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create distribuidor" do
    assert_difference('Distribuidor.count') do
      post :create, distribuidor: { Descripcion: @distribuidor.Descripcion, Mail: @distribuidor.Mail, Nombre: @distribuidor.Nombre, Rut: @distribuidor.Rut, Telefono: @distribuidor.Telefono, Ubicacion: @distribuidor.Ubicacion, productos: @distribuidor.productos, razonsocial: @distribuidor.razonsocial }
    end

    assert_redirected_to distribuidor_path(assigns(:distribuidor))
  end

  test "should show distribuidor" do
    get :show, id: @distribuidor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @distribuidor
    assert_response :success
  end

  test "should update distribuidor" do
    patch :update, id: @distribuidor, distribuidor: { Descripcion: @distribuidor.Descripcion, Mail: @distribuidor.Mail, Nombre: @distribuidor.Nombre, Rut: @distribuidor.Rut, Telefono: @distribuidor.Telefono, Ubicacion: @distribuidor.Ubicacion, productos: @distribuidor.productos, razonsocial: @distribuidor.razonsocial }
    assert_redirected_to distribuidor_path(assigns(:distribuidor))
  end

  test "should destroy distribuidor" do
    assert_difference('Distribuidor.count', -1) do
      delete :destroy, id: @distribuidor
    end

    assert_redirected_to distribuidors_path
  end
end

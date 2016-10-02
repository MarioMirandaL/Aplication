class ProductoPlatosController < ApplicationController
  before_action :set_producto_plato, only: [:show, :edit, :update, :destroy]

  # GET /producto_platos
  # GET /producto_platos.json
  def index
    @producto_platos = ProductoPlato.all
  end

  # GET /producto_platos/1
  # GET /producto_platos/1.json
  def show
  end

  # GET /producto_platos/new
  def new
    @producto_plato = ProductoPlato.new
  end

  # GET /producto_platos/1/edit
  def edit
  end

  # POST /producto_platos
  # POST /producto_platos.json
  def create
    @producto_plato = ProductoPlato.new(producto_plato_params)

    respond_to do |format|
      if @producto_plato.save
        format.html { redirect_to @producto_plato, notice: 'Producto plato was successfully created.' }
        format.json { render :show, status: :created, location: @producto_plato }
      else
        format.html { render :new }
        format.json { render json: @producto_plato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /producto_platos/1
  # PATCH/PUT /producto_platos/1.json
  def update
    respond_to do |format|
      if @producto_plato.update(producto_plato_params)
        format.html { redirect_to @producto_plato, notice: 'Producto plato was successfully updated.' }
        format.json { render :show, status: :ok, location: @producto_plato }
      else
        format.html { render :edit }
        format.json { render json: @producto_plato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producto_platos/1
  # DELETE /producto_platos/1.json
  def destroy
    @producto_plato.destroy
    respond_to do |format|
      format.html { redirect_to producto_platos_url, notice: 'Producto plato was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producto_plato
      @producto_plato = ProductoPlato.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producto_plato_params
      params.require(:producto_plato).permit(:producto_id, :plato_id)
    end
end

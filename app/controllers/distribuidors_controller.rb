class DistribuidorsController < ApplicationController
  before_action :set_distribuidor, only: [:show, :edit, :update, :destroy]

  # GET /distribuidors
  # GET /distribuidors.json
  def index
    @distribuidors = Distribuidor.all
  end

  # GET /distribuidors/1
  # GET /distribuidors/1.json
  def show
  end

  # GET /distribuidors/new
  def new
    @distribuidor = Distribuidor.new
  end

  # GET /distribuidors/1/edit
  def edit
  end

  # POST /distribuidors
  # POST /distribuidors.json
  def create
    @distribuidor = Distribuidor.new(distribuidor_params)

    respond_to do |format|
      if @distribuidor.save
        format.html { redirect_to @distribuidor, notice: 'Distribuidor was successfully created.' }
        format.json { render :show, status: :created, location: @distribuidor }
      else
        format.html { render :new }
        format.json { render json: @distribuidor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /distribuidors/1
  # PATCH/PUT /distribuidors/1.json
  def update
    respond_to do |format|
      if @distribuidor.update(distribuidor_params)
        format.html { redirect_to @distribuidor, notice: 'Distribuidor was successfully updated.' }
        format.json { render :show, status: :ok, location: @distribuidor }
      else
        format.html { render :edit }
        format.json { render json: @distribuidor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /distribuidors/1
  # DELETE /distribuidors/1.json
  def destroy
    @distribuidor.destroy
    respond_to do |format|
      format.html { redirect_to distribuidors_url, notice: 'Distribuidor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_distribuidor
      @distribuidor = Distribuidor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def distribuidor_params
      params.require(:distribuidor).permit(:Nombre, :razonsocial, :Rut, :Mail, :Telefono, :Ubicacion, :Descripcion, :productos)
    end
end

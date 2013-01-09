class ProductoEstadosController < ApplicationController
  # GET /producto_estados
  # GET /producto_estados.json
  def index
    @producto_estados = ProductoEstado.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @producto_estados }
    end
  end

  # GET /producto_estados/1
  # GET /producto_estados/1.json
  def show
    @producto_estado = ProductoEstado.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @producto_estado }
    end
  end

  # GET /producto_estados/new
  # GET /producto_estados/new.json
  def new
    @producto_estado = ProductoEstado.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @producto_estado }
    end
  end

  # GET /producto_estados/1/edit
  def edit
    @producto_estado = ProductoEstado.find(params[:id])
  end

  # POST /producto_estados
  # POST /producto_estados.json
  def create
    @producto_estado = ProductoEstado.new(params[:producto_estado])

    respond_to do |format|
      if @producto_estado.save
        format.html { redirect_to @producto_estado, notice: 'Producto estado was successfully created.' }
        format.json { render json: @producto_estado, status: :created, location: @producto_estado }
      else
        format.html { render action: "new" }
        format.json { render json: @producto_estado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /producto_estados/1
  # PUT /producto_estados/1.json
  def update
    @producto_estado = ProductoEstado.find(params[:id])

    respond_to do |format|
      if @producto_estado.update_attributes(params[:producto_estado])
        format.html { redirect_to @producto_estado, notice: 'Producto estado was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @producto_estado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producto_estados/1
  # DELETE /producto_estados/1.json
  def destroy
    @producto_estado = ProductoEstado.find(params[:id])
    @producto_estado.destroy

    respond_to do |format|
      format.html { redirect_to producto_estados_url }
      format.json { head :no_content }
    end
  end
end

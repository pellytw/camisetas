class DetalleComprasController < ApplicationController
  # GET /detalle_compras
  # GET /detalle_compras.json
  def index
    @detalle_compras = DetalleCompra.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @detalle_compras }
    end
  end

  # GET /detalle_compras/1
  # GET /detalle_compras/1.json
  def show
    @detalle_compra = DetalleCompra.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @detalle_compra }
    end
  end

  # GET /detalle_compras/new
  # GET /detalle_compras/new.json
  def new
    @detalle_compra = DetalleCompra.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @detalle_compra }
    end
  end

  # GET /detalle_compras/1/edit
  def edit
    @detalle_compra = DetalleCompra.find(params[:id])
  end

  # POST /detalle_compras
  # POST /detalle_compras.json
  def create
    @detalle_compra = DetalleCompra.new(params[:detalle_compra])

    respond_to do |format|
      if @detalle_compra.save
        format.html { redirect_to @detalle_compra, notice: 'Detalle compra was successfully created.' }
        format.json { render json: @detalle_compra, status: :created, location: @detalle_compra }
      else
        format.html { render action: "new" }
        format.json { render json: @detalle_compra.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /detalle_compras/1
  # PUT /detalle_compras/1.json
  def update
    @detalle_compra = DetalleCompra.find(params[:id])

    respond_to do |format|
      if @detalle_compra.update_attributes(params[:detalle_compra])
        format.html { redirect_to @detalle_compra, notice: 'Detalle compra was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @detalle_compra.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detalle_compras/1
  # DELETE /detalle_compras/1.json
  def destroy
    @detalle_compra = DetalleCompra.find(params[:id])
    @detalle_compra.destroy

    respond_to do |format|
      format.html { redirect_to detalle_compras_url }
      format.json { head :no_content }
    end
  end
end

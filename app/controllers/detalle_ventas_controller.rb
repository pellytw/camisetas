class DetalleVentasController < ApplicationController
  # GET /detalle_ventas
  # GET /detalle_ventas.json
  def index
    @detalle_ventas = DetalleVenta.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @detalle_ventas }
    end
  end

  # GET /detalle_ventas/1
  # GET /detalle_ventas/1.json
  def show
    @detalle_venta = DetalleVenta.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @detalle_venta }
    end
  end

  # GET /detalle_ventas/new
  # GET /detalle_ventas/new.json
  def new
    @detalle_venta = DetalleVenta.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @detalle_venta }
    end
  end

  # GET /detalle_ventas/1/edit
  def edit
    @detalle_venta = DetalleVenta.find(params[:id])
  end

  # POST /detalle_ventas
  # POST /detalle_ventas.json
  def create
    @detalle_venta = DetalleVenta.new(params[:detalle_venta])
  
    respond_to do |format|
      if @detalle_venta.save
        format.html { redirect_to @detalle_venta, notice: 'Detalle venta was successfully created.' }
        format.json { render json: @detalle_venta, status: :created, location: @detalle_venta }
      else
        format.html { render action: "new" }
        format.json { render json: @detalle_venta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /detalle_ventas/1
  # PUT /detalle_ventas/1.json
  def update
    @detalle_venta = DetalleVenta.find(params[:id])
    respond_to do |format|
      if @detalle_venta.update_attributes(params[:detalle_venta])
        format.html { redirect_to @detalle_venta, notice: 'Detalle venta was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @detalle_venta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detalle_ventas/1
  # DELETE /detalle_ventas/1.json
  def destroy
    @detalle_venta = DetalleVenta.find(params[:id])
    @detalle_venta.destroy

    respond_to do |format|
      format.html { redirect_to detalle_ventas_url }
      format.json { head :no_content }
    end
  end
end

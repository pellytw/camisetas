class TitularidadsController < ApplicationController
  # GET /titularidads
  # GET /titularidads.json
  def index
    @titularidads = Titularidad.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @titularidads }
    end
  end

  # GET /titularidads/1
  # GET /titularidads/1.json
  def show
    @titularidad = Titularidad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @titularidad }
    end
  end

  # GET /titularidads/new
  # GET /titularidads/new.json
  def new
    @titularidad = Titularidad.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @titularidad }
    end
  end

  # GET /titularidads/1/edit
  def edit
    @titularidad = Titularidad.find(params[:id])
  end

  # POST /titularidads
  # POST /titularidads.json
  def create
    @titularidad = Titularidad.new(params[:titularidad])

    respond_to do |format|
      if @titularidad.save
        format.html { redirect_to @titularidad, notice: 'Titularidad was successfully created.' }
        format.json { render json: @titularidad, status: :created, location: @titularidad }
      else
        format.html { render action: "new" }
        format.json { render json: @titularidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /titularidads/1
  # PUT /titularidads/1.json
  def update
    @titularidad = Titularidad.find(params[:id])

    respond_to do |format|
      if @titularidad.update_attributes(params[:titularidad])
        format.html { redirect_to @titularidad, notice: 'Titularidad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @titularidad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /titularidads/1
  # DELETE /titularidads/1.json
  def destroy
    @titularidad = Titularidad.find(params[:id])
    @titularidad.destroy

    respond_to do |format|
      format.html { redirect_to titularidads_url }
      format.json { head :no_content }
    end
  end
end

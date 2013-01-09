class TallesController < ApplicationController
  # GET /talles
  # GET /talles.json
  def index
    @talles = Talle.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @talles }
    end
  end

  # GET /talles/1
  # GET /talles/1.json
  def show
    @talle = Talle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @talle }
    end
  end

  # GET /talles/new
  # GET /talles/new.json
  def new
    @talle = Talle.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @talle }
    end
  end

  # GET /talles/1/edit
  def edit
    @talle = Talle.find(params[:id])
  end

  # POST /talles
  # POST /talles.json
  def create
    @talle = Talle.new(params[:talle])

    respond_to do |format|
      if @talle.save
        format.html { redirect_to @talle, notice: 'Talle was successfully created.' }
        format.json { render json: @talle, status: :created, location: @talle }
      else
        format.html { render action: "new" }
        format.json { render json: @talle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /talles/1
  # PUT /talles/1.json
  def update
    @talle = Talle.find(params[:id])

    respond_to do |format|
      if @talle.update_attributes(params[:talle])
        format.html { redirect_to @talle, notice: 'Talle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @talle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /talles/1
  # DELETE /talles/1.json
  def destroy
    @talle = Talle.find(params[:id])
    @talle.destroy

    respond_to do |format|
      format.html { redirect_to talles_url }
      format.json { head :no_content }
    end
  end
end

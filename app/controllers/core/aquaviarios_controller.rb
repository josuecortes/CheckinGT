class Core::AquaviariosController < ApplicationController
  # GET /core/aquaviarios
  # GET /core/aquaviarios.json
  def index
    @core_aquaviarios = Core::Aquaviario.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @core_aquaviarios }
    end
  end

  # GET /core/aquaviarios/1
  # GET /core/aquaviarios/1.json
  def show
    @core_aquaviario = Core::Aquaviario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @core_aquaviario }
    end
  end

  # GET /core/aquaviarios/new
  # GET /core/aquaviarios/new.json
  def new
    @core_aquaviario = Core::Aquaviario.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @core_aquaviario }
    end
  end

  # GET /core/aquaviarios/1/edit
  def edit
    @core_aquaviario = Core::Aquaviario.find(params[:id])
  end

  # POST /core/aquaviarios
  # POST /core/aquaviarios.json
  def create
    @core_aquaviario = Core::Aquaviario.new(params[:core_aquaviario])

    respond_to do |format|
      if @core_aquaviario.save
        format.html { redirect_to @core_aquaviario, notice: 'Aquaviario was successfully created.' }
        format.json { render json: @core_aquaviario, status: :created, location: @core_aquaviario }
      else
        format.html { render action: "new" }
        format.json { render json: @core_aquaviario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /core/aquaviarios/1
  # PUT /core/aquaviarios/1.json
  def update
    @core_aquaviario = Core::Aquaviario.find(params[:id])

    respond_to do |format|
      if @core_aquaviario.update_attributes(params[:core_aquaviario])
        format.html { redirect_to @core_aquaviario, notice: 'Aquaviario was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @core_aquaviario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/aquaviarios/1
  # DELETE /core/aquaviarios/1.json
  def destroy
    @core_aquaviario = Core::Aquaviario.find(params[:id])
    @core_aquaviario.destroy

    respond_to do |format|
      format.html { redirect_to core_aquaviarios_url }
      format.json { head :no_content }
    end
  end
end

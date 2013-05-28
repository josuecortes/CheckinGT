class Core::RodoviariosController < ApplicationController
  # GET /core/rodoviarios
  # GET /core/rodoviarios.json
  def index
    @core_rodoviarios = Core::Rodoviario.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @core_rodoviarios }
    end
  end

  # GET /core/rodoviarios/1
  # GET /core/rodoviarios/1.json
  def show
    @core_rodoviario = Core::Rodoviario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @core_rodoviario }
    end
  end

  # GET /core/rodoviarios/new
  # GET /core/rodoviarios/new.json
  def new
    @core_rodoviario = Core::Rodoviario.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @core_rodoviario }
    end
  end

  # GET /core/rodoviarios/1/edit
  def edit
    @core_rodoviario = Core::Rodoviario.find(params[:id])
  end

  # POST /core/rodoviarios
  # POST /core/rodoviarios.json
  def create
    @core_rodoviario = Core::Rodoviario.new(params[:core_rodoviario])

    respond_to do |format|
      if @core_rodoviario.save
        format.html { redirect_to @core_rodoviario, notice: 'Rodoviario was successfully created.' }
        format.json { render json: @core_rodoviario, status: :created, location: @core_rodoviario }
      else
        format.html { render action: "new" }
        format.json { render json: @core_rodoviario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /core/rodoviarios/1
  # PUT /core/rodoviarios/1.json
  def update
    @core_rodoviario = Core::Rodoviario.find(params[:id])

    respond_to do |format|
      if @core_rodoviario.update_attributes(params[:core_rodoviario])
        format.html { redirect_to @core_rodoviario, notice: 'Rodoviario was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @core_rodoviario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/rodoviarios/1
  # DELETE /core/rodoviarios/1.json
  def destroy
    @core_rodoviario = Core::Rodoviario.find(params[:id])
    @core_rodoviario.destroy

    respond_to do |format|
      format.html { redirect_to core_rodoviarios_url }
      format.json { head :no_content }
    end
  end
end

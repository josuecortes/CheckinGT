class Core::StatusUnidadeCargasController < ApplicationController
  # GET /core/status_unidade_cargas
  # GET /core/status_unidade_cargas.json
  def index
    @core_status_unidade_cargas = Core::StatusUnidadeCarga.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @core_status_unidade_cargas }
    end
  end

  # GET /core/status_unidade_cargas/1
  # GET /core/status_unidade_cargas/1.json
  def show
    @core_status_unidade_carga = Core::StatusUnidadeCarga.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @core_status_unidade_carga }
    end
  end

  # GET /core/status_unidade_cargas/new
  # GET /core/status_unidade_cargas/new.json
  def new
    @core_status_unidade_carga = Core::StatusUnidadeCarga.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @core_status_unidade_carga }
    end
  end

  # GET /core/status_unidade_cargas/1/edit
  def edit
    @core_status_unidade_carga = Core::StatusUnidadeCarga.find(params[:id])
  end

  # POST /core/status_unidade_cargas
  # POST /core/status_unidade_cargas.json
  def create
    @core_status_unidade_carga = Core::StatusUnidadeCarga.new(params[:core_status_unidade_carga])

    respond_to do |format|
      if @core_status_unidade_carga.save
        format.html { redirect_to @core_status_unidade_carga, notice: 'Status unidade carga was successfully created.' }
        format.json { render json: @core_status_unidade_carga, status: :created, location: @core_status_unidade_carga }
      else
        format.html { render action: "new" }
        format.json { render json: @core_status_unidade_carga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /core/status_unidade_cargas/1
  # PUT /core/status_unidade_cargas/1.json
  def update
    @core_status_unidade_carga = Core::StatusUnidadeCarga.find(params[:id])

    respond_to do |format|
      if @core_status_unidade_carga.update_attributes(params[:core_status_unidade_carga])
        format.html { redirect_to @core_status_unidade_carga, notice: 'Status unidade carga was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @core_status_unidade_carga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/status_unidade_cargas/1
  # DELETE /core/status_unidade_cargas/1.json
  def destroy
    @core_status_unidade_carga = Core::StatusUnidadeCarga.find(params[:id])
    @core_status_unidade_carga.destroy

    respond_to do |format|
      format.html { redirect_to core_status_unidade_cargas_url }
      format.json { head :no_content }
    end
  end
end

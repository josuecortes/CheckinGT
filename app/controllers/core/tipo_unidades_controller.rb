class Core::TipoUnidadesController < ApplicationController
  # GET /core/tipo_unidades
  # GET /core/tipo_unidades.json
  def index
    @core_tipo_unidades = Core::TipoUnidade.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @core_tipo_unidades }
    end
  end

  # GET /core/tipo_unidades/1
  # GET /core/tipo_unidades/1.json
  def show
    @core_tipo_unidade = Core::TipoUnidade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @core_tipo_unidade }
    end
  end

  # GET /core/tipo_unidades/new
  # GET /core/tipo_unidades/new.json
  def new
    @core_tipo_unidade = Core::TipoUnidade.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @core_tipo_unidade }
    end
  end

  # GET /core/tipo_unidades/1/edit
  def edit
    @core_tipo_unidade = Core::TipoUnidade.find(params[:id])
  end

  # POST /core/tipo_unidades
  # POST /core/tipo_unidades.json
  def create
    @core_tipo_unidade = Core::TipoUnidade.new(params[:core_tipo_unidade])

    respond_to do |format|
      if @core_tipo_unidade.save
        format.html { redirect_to @core_tipo_unidade, notice: 'Tipo unidade was successfully created.' }
        format.json { render json: @core_tipo_unidade, status: :created, location: @core_tipo_unidade }
      else
        format.html { render action: "new" }
        format.json { render json: @core_tipo_unidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /core/tipo_unidades/1
  # PUT /core/tipo_unidades/1.json
  def update
    @core_tipo_unidade = Core::TipoUnidade.find(params[:id])

    respond_to do |format|
      if @core_tipo_unidade.update_attributes(params[:core_tipo_unidade])
        format.html { redirect_to @core_tipo_unidade, notice: 'Tipo unidade was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @core_tipo_unidade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/tipo_unidades/1
  # DELETE /core/tipo_unidades/1.json
  def destroy
    @core_tipo_unidade = Core::TipoUnidade.find(params[:id])
    @core_tipo_unidade.destroy

    respond_to do |format|
      format.html { redirect_to core_tipo_unidades_url }
      format.json { head :no_content }
    end
  end
end

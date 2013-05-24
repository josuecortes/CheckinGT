class Core::TipoDetalhesController < ApplicationController
  # GET /core/tipo_detalhes
  # GET /core/tipo_detalhes.json
  def index
    @core_tipo_detalhes = Core::TipoDetalhe.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @core_tipo_detalhes }
    end
  end

  # GET /core/tipo_detalhes/1
  # GET /core/tipo_detalhes/1.json
  def show
    @core_tipo_detalhe = Core::TipoDetalhe.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @core_tipo_detalhe }
    end
  end

  # GET /core/tipo_detalhes/new
  # GET /core/tipo_detalhes/new.json
  def new
    @core_tipo_detalhe = Core::TipoDetalhe.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @core_tipo_detalhe }
    end
  end

  # GET /core/tipo_detalhes/1/edit
  def edit
    @core_tipo_detalhe = Core::TipoDetalhe.find(params[:id])
  end

  # POST /core/tipo_detalhes
  # POST /core/tipo_detalhes.json
  def create
    @core_tipo_detalhe = Core::TipoDetalhe.new(params[:core_tipo_detalhe])

    respond_to do |format|
      if @core_tipo_detalhe.save
        format.html { redirect_to @core_tipo_detalhe, notice: 'Tipo detalhe was successfully created.' }
        format.json { render json: @core_tipo_detalhe, status: :created, location: @core_tipo_detalhe }
      else
        format.html { render action: "new" }
        format.json { render json: @core_tipo_detalhe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /core/tipo_detalhes/1
  # PUT /core/tipo_detalhes/1.json
  def update
    @core_tipo_detalhe = Core::TipoDetalhe.find(params[:id])

    respond_to do |format|
      if @core_tipo_detalhe.update_attributes(params[:core_tipo_detalhe])
        format.html { redirect_to @core_tipo_detalhe, notice: 'Tipo detalhe was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @core_tipo_detalhe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/tipo_detalhes/1
  # DELETE /core/tipo_detalhes/1.json
  def destroy
    @core_tipo_detalhe = Core::TipoDetalhe.find(params[:id])
    @core_tipo_detalhe.destroy

    respond_to do |format|
      format.html { redirect_to core_tipo_detalhes_url }
      format.json { head :no_content }
    end
  end
end

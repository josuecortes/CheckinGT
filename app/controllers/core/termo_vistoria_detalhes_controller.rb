class Core::TermoVistoriaDetalhesController < ApplicationController
  # GET /core/termo_vistoria_detalhes
  # GET /core/termo_vistoria_detalhes.json
  def index
    @core_termo_vistoria_detalhes = Core::TermoVistoriaDetalhe.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @core_termo_vistoria_detalhes }
    end
  end

  # GET /core/termo_vistoria_detalhes/1
  # GET /core/termo_vistoria_detalhes/1.json
  def show
    @core_termo_vistoria_detalhe = Core::TermoVistoriaDetalhe.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @core_termo_vistoria_detalhe }
    end
  end

  # GET /core/termo_vistoria_detalhes/new
  # GET /core/termo_vistoria_detalhes/new.json
  def new
    @core_termo_vistoria_detalhe = Core::TermoVistoriaDetalhe.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @core_termo_vistoria_detalhe }
    end
  end

  # GET /core/termo_vistoria_detalhes/1/edit
  def edit
    @core_termo_vistoria_detalhe = Core::TermoVistoriaDetalhe.find(params[:id])
  end

  # POST /core/termo_vistoria_detalhes
  # POST /core/termo_vistoria_detalhes.json
  def create
    @core_termo_vistoria_detalhe = Core::TermoVistoriaDetalhe.new(params[:core_termo_vistoria_detalhe])

    respond_to do |format|
      if @core_termo_vistoria_detalhe.save
        format.html { redirect_to @core_termo_vistoria_detalhe, notice: 'Termo vistoria detalhe was successfully created.' }
        format.json { render json: @core_termo_vistoria_detalhe, status: :created, location: @core_termo_vistoria_detalhe }
      else
        format.html { render action: "new" }
        format.json { render json: @core_termo_vistoria_detalhe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /core/termo_vistoria_detalhes/1
  # PUT /core/termo_vistoria_detalhes/1.json
  def update
    @core_termo_vistoria_detalhe = Core::TermoVistoriaDetalhe.find(params[:id])

    respond_to do |format|
      if @core_termo_vistoria_detalhe.update_attributes(params[:core_termo_vistoria_detalhe])
        format.html { redirect_to @core_termo_vistoria_detalhe, notice: 'Termo vistoria detalhe was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @core_termo_vistoria_detalhe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/termo_vistoria_detalhes/1
  # DELETE /core/termo_vistoria_detalhes/1.json
  def destroy
    @core_termo_vistoria_detalhe = Core::TermoVistoriaDetalhe.find(params[:id])
    @core_termo_vistoria_detalhe.destroy

    respond_to do |format|
      format.html { redirect_to core_termo_vistoria_detalhes_url }
      format.json { head :no_content }
    end
  end
end

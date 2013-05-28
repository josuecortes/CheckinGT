class Core::TermoVistoriaController < ApplicationController
  # GET /core/termo_vistoria
  # GET /core/termo_vistoria.json
  def index
    @core_termo_vistoria = Core::TermoVistorium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @core_termo_vistoria }
    end
  end

  # GET /core/termo_vistoria/1
  # GET /core/termo_vistoria/1.json
  def show
    @core_termo_vistorium = Core::TermoVistorium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @core_termo_vistorium }
    end
  end

  # GET /core/termo_vistoria/new
  # GET /core/termo_vistoria/new.json
  def new
    @core_termo_vistorium = Core::TermoVistorium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @core_termo_vistorium }
    end
  end

  # GET /core/termo_vistoria/1/edit
  def edit
    @core_termo_vistorium = Core::TermoVistorium.find(params[:id])
  end

  # POST /core/termo_vistoria
  # POST /core/termo_vistoria.json
  def create
    @core_termo_vistorium = Core::TermoVistorium.new(params[:core_termo_vistorium])

    respond_to do |format|
      if @core_termo_vistorium.save
        format.html { redirect_to @core_termo_vistorium, notice: 'Termo vistorium was successfully created.' }
        format.json { render json: @core_termo_vistorium, status: :created, location: @core_termo_vistorium }
      else
        format.html { render action: "new" }
        format.json { render json: @core_termo_vistorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /core/termo_vistoria/1
  # PUT /core/termo_vistoria/1.json
  def update
    @core_termo_vistorium = Core::TermoVistorium.find(params[:id])

    respond_to do |format|
      if @core_termo_vistorium.update_attributes(params[:core_termo_vistorium])
        format.html { redirect_to @core_termo_vistorium, notice: 'Termo vistorium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @core_termo_vistorium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/termo_vistoria/1
  # DELETE /core/termo_vistoria/1.json
  def destroy
    @core_termo_vistorium = Core::TermoVistorium.find(params[:id])
    @core_termo_vistorium.destroy

    respond_to do |format|
      format.html { redirect_to core_termo_vistoria_url }
      format.json { head :no_content }
    end
  end
end

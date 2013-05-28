class Core::TipoDocumentoEletronicosController < ApplicationController
  # GET /core/tipo_documento_eletronicos
  # GET /core/tipo_documento_eletronicos.json
  def index
    @core_tipo_documento_eletronicos = Core::TipoDocumentoEletronico.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @core_tipo_documento_eletronicos }
    end
  end

  # GET /core/tipo_documento_eletronicos/1
  # GET /core/tipo_documento_eletronicos/1.json
  def show
    @core_tipo_documento_eletronico = Core::TipoDocumentoEletronico.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @core_tipo_documento_eletronico }
    end
  end

  # GET /core/tipo_documento_eletronicos/new
  # GET /core/tipo_documento_eletronicos/new.json
  def new
    @core_tipo_documento_eletronico = Core::TipoDocumentoEletronico.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @core_tipo_documento_eletronico }
    end
  end

  # GET /core/tipo_documento_eletronicos/1/edit
  def edit
    @core_tipo_documento_eletronico = Core::TipoDocumentoEletronico.find(params[:id])
  end

  # POST /core/tipo_documento_eletronicos
  # POST /core/tipo_documento_eletronicos.json
  def create
    @core_tipo_documento_eletronico = Core::TipoDocumentoEletronico.new(params[:core_tipo_documento_eletronico])

    respond_to do |format|
      if @core_tipo_documento_eletronico.save
        format.html { redirect_to @core_tipo_documento_eletronico, notice: 'Tipo documento eletronico was successfully created.' }
        format.json { render json: @core_tipo_documento_eletronico, status: :created, location: @core_tipo_documento_eletronico }
      else
        format.html { render action: "new" }
        format.json { render json: @core_tipo_documento_eletronico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /core/tipo_documento_eletronicos/1
  # PUT /core/tipo_documento_eletronicos/1.json
  def update
    @core_tipo_documento_eletronico = Core::TipoDocumentoEletronico.find(params[:id])

    respond_to do |format|
      if @core_tipo_documento_eletronico.update_attributes(params[:core_tipo_documento_eletronico])
        format.html { redirect_to @core_tipo_documento_eletronico, notice: 'Tipo documento eletronico was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @core_tipo_documento_eletronico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/tipo_documento_eletronicos/1
  # DELETE /core/tipo_documento_eletronicos/1.json
  def destroy
    @core_tipo_documento_eletronico = Core::TipoDocumentoEletronico.find(params[:id])
    @core_tipo_documento_eletronico.destroy

    respond_to do |format|
      format.html { redirect_to core_tipo_documento_eletronicos_url }
      format.json { head :no_content }
    end
  end
end

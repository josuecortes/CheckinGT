class Core::StatusSeloFiscalTiposController < ApplicationController
  # GET /core/status_selo_fiscal_tipos
  # GET /core/status_selo_fiscal_tipos.json
  def index
    @core_status_selo_fiscal_tipos = Core::StatusSeloFiscalTipo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @core_status_selo_fiscal_tipos }
    end
  end

  # GET /core/status_selo_fiscal_tipos/1
  # GET /core/status_selo_fiscal_tipos/1.json
  def show
    @core_status_selo_fiscal_tipo = Core::StatusSeloFiscalTipo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @core_status_selo_fiscal_tipo }
    end
  end

  # GET /core/status_selo_fiscal_tipos/new
  # GET /core/status_selo_fiscal_tipos/new.json
  def new
    @core_status_selo_fiscal_tipo = Core::StatusSeloFiscalTipo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @core_status_selo_fiscal_tipo }
    end
  end

  # GET /core/status_selo_fiscal_tipos/1/edit
  def edit
    @core_status_selo_fiscal_tipo = Core::StatusSeloFiscalTipo.find(params[:id])
  end

  # POST /core/status_selo_fiscal_tipos
  # POST /core/status_selo_fiscal_tipos.json
  def create
    @core_status_selo_fiscal_tipo = Core::StatusSeloFiscalTipo.new(params[:core_status_selo_fiscal_tipo])

    respond_to do |format|
      if @core_status_selo_fiscal_tipo.save
        format.html { redirect_to @core_status_selo_fiscal_tipo, notice: 'Status selo fiscal tipo was successfully created.' }
        format.json { render json: @core_status_selo_fiscal_tipo, status: :created, location: @core_status_selo_fiscal_tipo }
      else
        format.html { render action: "new" }
        format.json { render json: @core_status_selo_fiscal_tipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /core/status_selo_fiscal_tipos/1
  # PUT /core/status_selo_fiscal_tipos/1.json
  def update
    @core_status_selo_fiscal_tipo = Core::StatusSeloFiscalTipo.find(params[:id])

    respond_to do |format|
      if @core_status_selo_fiscal_tipo.update_attributes(params[:core_status_selo_fiscal_tipo])
        format.html { redirect_to @core_status_selo_fiscal_tipo, notice: 'Status selo fiscal tipo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @core_status_selo_fiscal_tipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/status_selo_fiscal_tipos/1
  # DELETE /core/status_selo_fiscal_tipos/1.json
  def destroy
    @core_status_selo_fiscal_tipo = Core::StatusSeloFiscalTipo.find(params[:id])
    @core_status_selo_fiscal_tipo.destroy

    respond_to do |format|
      format.html { redirect_to core_status_selo_fiscal_tipos_url }
      format.json { head :no_content }
    end
  end
end

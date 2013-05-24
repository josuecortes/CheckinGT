class Core::StatusProcessamentosController < ApplicationController
  # GET /core/status_processamentos
  # GET /core/status_processamentos.json
  def index
    @core_status_processamentos = Core::StatusProcessamento.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @core_status_processamentos }
    end
  end

  # GET /core/status_processamentos/1
  # GET /core/status_processamentos/1.json
  def show
    @core_status_processamento = Core::StatusProcessamento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @core_status_processamento }
    end
  end

  # GET /core/status_processamentos/new
  # GET /core/status_processamentos/new.json
  def new
    @core_status_processamento = Core::StatusProcessamento.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @core_status_processamento }
    end
  end

  # GET /core/status_processamentos/1/edit
  def edit
    @core_status_processamento = Core::StatusProcessamento.find(params[:id])
  end

  # POST /core/status_processamentos
  # POST /core/status_processamentos.json
  def create
    @core_status_processamento = Core::StatusProcessamento.new(params[:core_status_processamento])

    respond_to do |format|
      if @core_status_processamento.save
        format.html { redirect_to @core_status_processamento, notice: 'Status processamento was successfully created.' }
        format.json { render json: @core_status_processamento, status: :created, location: @core_status_processamento }
      else
        format.html { render action: "new" }
        format.json { render json: @core_status_processamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /core/status_processamentos/1
  # PUT /core/status_processamentos/1.json
  def update
    @core_status_processamento = Core::StatusProcessamento.find(params[:id])

    respond_to do |format|
      if @core_status_processamento.update_attributes(params[:core_status_processamento])
        format.html { redirect_to @core_status_processamento, notice: 'Status processamento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @core_status_processamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/status_processamentos/1
  # DELETE /core/status_processamentos/1.json
  def destroy
    @core_status_processamento = Core::StatusProcessamento.find(params[:id])
    @core_status_processamento.destroy

    respond_to do |format|
      format.html { redirect_to core_status_processamentos_url }
      format.json { head :no_content }
    end
  end
end

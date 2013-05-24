class Core::StatusTermoFielDepositariosController < ApplicationController
  # GET /core/status_termo_fiel_depositarios
  # GET /core/status_termo_fiel_depositarios.json
  def index
    @core_status_termo_fiel_depositarios = Core::StatusTermoFielDepositario.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @core_status_termo_fiel_depositarios }
    end
  end

  # GET /core/status_termo_fiel_depositarios/1
  # GET /core/status_termo_fiel_depositarios/1.json
  def show
    @core_status_termo_fiel_depositario = Core::StatusTermoFielDepositario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @core_status_termo_fiel_depositario }
    end
  end

  # GET /core/status_termo_fiel_depositarios/new
  # GET /core/status_termo_fiel_depositarios/new.json
  def new
    @core_status_termo_fiel_depositario = Core::StatusTermoFielDepositario.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @core_status_termo_fiel_depositario }
    end
  end

  # GET /core/status_termo_fiel_depositarios/1/edit
  def edit
    @core_status_termo_fiel_depositario = Core::StatusTermoFielDepositario.find(params[:id])
  end

  # POST /core/status_termo_fiel_depositarios
  # POST /core/status_termo_fiel_depositarios.json
  def create
    @core_status_termo_fiel_depositario = Core::StatusTermoFielDepositario.new(params[:core_status_termo_fiel_depositario])

    respond_to do |format|
      if @core_status_termo_fiel_depositario.save
        format.html { redirect_to @core_status_termo_fiel_depositario, notice: 'Status termo fiel depositario was successfully created.' }
        format.json { render json: @core_status_termo_fiel_depositario, status: :created, location: @core_status_termo_fiel_depositario }
      else
        format.html { render action: "new" }
        format.json { render json: @core_status_termo_fiel_depositario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /core/status_termo_fiel_depositarios/1
  # PUT /core/status_termo_fiel_depositarios/1.json
  def update
    @core_status_termo_fiel_depositario = Core::StatusTermoFielDepositario.find(params[:id])

    respond_to do |format|
      if @core_status_termo_fiel_depositario.update_attributes(params[:core_status_termo_fiel_depositario])
        format.html { redirect_to @core_status_termo_fiel_depositario, notice: 'Status termo fiel depositario was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @core_status_termo_fiel_depositario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/status_termo_fiel_depositarios/1
  # DELETE /core/status_termo_fiel_depositarios/1.json
  def destroy
    @core_status_termo_fiel_depositario = Core::StatusTermoFielDepositario.find(params[:id])
    @core_status_termo_fiel_depositario.destroy

    respond_to do |format|
      format.html { redirect_to core_status_termo_fiel_depositarios_url }
      format.json { head :no_content }
    end
  end
end

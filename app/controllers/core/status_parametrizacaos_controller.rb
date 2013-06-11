class Core::StatusParametrizacaosController < ApplicationController
  # GET /core/status_parametrizacaos
  # GET /core/status_parametrizacaos.json
  def index
    @core_status_parametrizacaos = Core::StatusParametrizacao.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @core_status_parametrizacaos }
    end
  end

  # GET /core/status_parametrizacaos/1
  # GET /core/status_parametrizacaos/1.json
  def show
    @core_status_parametrizacao = Core::StatusParametrizacao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @core_status_parametrizacao }
    end
  end

  # GET /core/status_parametrizacaos/new
  # GET /core/status_parametrizacaos/new.json
  def new
    @core_status_parametrizacao = Core::StatusParametrizacao.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @core_status_parametrizacao }
    end
  end

  # GET /core/status_parametrizacaos/1/edit
  def edit
    @core_status_parametrizacao = Core::StatusParametrizacao.find(params[:id])
  end

  # POST /core/status_parametrizacaos
  # POST /core/status_parametrizacaos.json
  def create
    @core_status_parametrizacao = Core::StatusParametrizacao.new(params[:core_status_parametrizacao])

    respond_to do |format|
      if @core_status_parametrizacao.save
        format.html { redirect_to @core_status_parametrizacao, notice: 'Status parametrizacao was successfully created.' }
        format.json { render json: @core_status_parametrizacao, status: :created, location: @core_status_parametrizacao }
      else
        format.html { render action: "new" }
        format.json { render json: @core_status_parametrizacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /core/status_parametrizacaos/1
  # PUT /core/status_parametrizacaos/1.json
  def update
    @core_status_parametrizacao = Core::StatusParametrizacao.find(params[:id])

    respond_to do |format|
      if @core_status_parametrizacao.update_attributes(params[:core_status_parametrizacao])
        format.html { redirect_to @core_status_parametrizacao, notice: 'Status parametrizacao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @core_status_parametrizacao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/status_parametrizacaos/1
  # DELETE /core/status_parametrizacaos/1.json
  def destroy
    @core_status_parametrizacao = Core::StatusParametrizacao.find(params[:id])
    @core_status_parametrizacao.destroy

    respond_to do |format|
      format.html { redirect_to core_status_parametrizacaos_url }
      format.json { head :no_content }
    end
  end
end

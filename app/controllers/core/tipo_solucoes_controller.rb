class Core::TipoSolucoesController < ApplicationController
  # GET /core/tipo_solucoes
  # GET /core/tipo_solucoes.json
  def index
    @core_tipo_solucoes = Core::TipoSolucao.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @core_tipo_solucoes }
    end
  end

  # GET /core/tipo_solucoes/1
  # GET /core/tipo_solucoes/1.json
  def show
    @core_tipo_solucao = Core::TipoSolucao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @core_tipo_solucao }
    end
  end

  # GET /core/tipo_solucoes/new
  # GET /core/tipo_solucoes/new.json
  def new
    @core_tipo_solucao = Core::TipoSolucao.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @core_tipo_solucao }
    end
  end

  # GET /core/tipo_solucoes/1/edit
  def edit
    @core_tipo_solucao = Core::TipoSolucao.find(params[:id])
  end

  # POST /core/tipo_solucoes
  # POST /core/tipo_solucoes.json
  def create
    @core_tipo_solucao = Core::TipoSolucao.new(params[:core_tipo_solucao])

    respond_to do |format|
      if @core_tipo_solucao.save
        format.html { redirect_to @core_tipo_solucao, notice: 'Tipo solucao was successfully created.' }
        format.json { render json: @core_tipo_solucao, status: :created, location: @core_tipo_solucao }
      else
        format.html { render action: "new" }
        format.json { render json: @core_tipo_solucao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /core/tipo_solucoes/1
  # PUT /core/tipo_solucoes/1.json
  def update
    @core_tipo_solucao = Core::TipoSolucao.find(params[:id])

    respond_to do |format|
      if @core_tipo_solucao.update_attributes(params[:core_tipo_solucao])
        format.html { redirect_to @core_tipo_solucao, notice: 'Tipo solucao was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @core_tipo_solucao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/tipo_solucoes/1
  # DELETE /core/tipo_solucoes/1.json
  def destroy
    @core_tipo_solucao = Core::TipoSolucao.find(params[:id])
    @core_tipo_solucao.destroy

    respond_to do |format|
      format.html { redirect_to core_tipo_solucoes_url }
      format.json { head :no_content }
    end
  end
end

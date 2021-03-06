class Core::PortosController < ApplicationController
  # GET /core/portos
  # GET /core/portos.json
  def index
    @empresa = Core::Empresa.find(params[:empresa_id])
    @core_portos = @empresa.portos.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @core_portos }
    end
  end

  # GET /core/portos/1
  # GET /core/portos/1.json
  def show
  	@empresa = Core::Empresa.find(params[:empresa_id])
    @core_porto = Core::Porto.find(params[:id])


    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @core_porto }
    end
  end

  # GET /core/portos/new
  # GET /core/portos/new.json
  def new
  	@empresa = Core::Empresa.find(params[:empresa_id])
    @core_porto = Core::Porto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @core_porto }
    end
  end

  # GET /core/portos/1/edit
  def edit
  	@empresa = Core::Empresa.find(params[:empresa_id])
    @core_porto = Core::Porto.find(params[:id])
  end

  # POST /core/portos
  # POST /core/portos.json
  def create
    @empresa = Core::Empresa.find(params[:empresa_id])
    @core_porto = Core::Porto.new(params[:core_porto])
  
    if @core_porto.save
      flash[:success] = "Salvo com Successo"
      redirect_to core_empresa_portos_path(@empresa)
    else
      flash[:error] = "Erro ao Salvar"
      render action: "new"
    end
        
  end

  # PUT /core/portos/1
  # PUT /core/portos/1.json
  def update
    @empresa = Core::Empresa.find(params[:empresa_id])
    @core_porto = Core::Porto.find(params[:id])

    
    if @core_porto.update_attributes(params[:core_porto])
      flash[:success] = "Atualizadp com Successo"
      redirect_to core_empresa_portos_path(@empresa)
    else
      flash[:error] = "Erro ao Salvar"
      render action: "edit"   
    end
  end

  # DELETE /core/portos/1
  # DELETE /core/portos/1.json
  def destroy
    @empresa = Core::Empresa.find(params[:empresa_id])
    @core_porto = Core::Porto.find(params[:id])
    @core_porto.destroy

    respond_to do |format|
      format.html { redirect_to core_portos_url }
      format.json { head :no_content }
    end
  end
end

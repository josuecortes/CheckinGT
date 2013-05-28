class Aquaviario::UnidadeCargasController < ApplicationController
  # GET /aquaviario/unidade_cargas
  # GET /aquaviario/unidade_cargas.json
  def index
    @dad = Aquaviario::Dad.da_empresa(@usuario_logado.empresa_id).find(params[:dad_id])
    @auc = @dad.unidade_cargas.all
  end

  def show
  	@dad = Aquaviario::Dad.da_empresa(@usuario_logado.empresa_id).find(params[:dad_id])
   	@aquaviario_unidade_carga = @dad.unidade_cargas.find(params[:id])
  end

  def new
  	@dad = Aquaviario::Dad.da_empresa(@usuario_logado.empresa_id).find(params[:dad_id])
    @aquaviario_unidade_carga = Aquaviario::UnidadeCarga.new
  end

  # GET /aquaviario/unidade_cargas/1/edit
  def edit
  	@dad = Aquaviario::Dad.da_empresa(@usuario_logado.empresa_id).find(params[:dad_id])
   	@aquaviario_unidade_carga = @dad.unidade_cargas.find(params[:id])
  end

  def create
  	@dad = Aquaviario::Dad.da_empresa(@usuario_logado.empresa_id).find(params[:dad_id])
    @aquaviario_unidade_carga = Aquaviario::UnidadeCarga.new(params[:aquaviario_unidade_carga])

    if @aquaviario_unidade_carga.save
      flash[:success] = "Salva com Sucesso"
    	redirect_to aquaviario_dad_unidade_cargas_path(@dad)
    else
    	flash[:error] = "Erro ao Salvar"
    	render action: "new"
    end
  end
  
  def update
  	@dad = Aquaviario::Dad.da_empresa(@usuario_logado.empresa_id).find(params[:dad_id])
    @aquaviario_unidade_carga = @dad.unidade_cargas.find(params[:id])

    
     if @aquaviario_unidade_carga.update_attributes(params[:aquaviario_unidade_carga])
      flash[:success] = "Atualizado com Sucesso"
    	redirect_to aquaviario_dad_unidade_cargas_path(@dad)
    else
    	flash[:error] = "Erro ao Atualizar"
    	render action: "edit"
    end
  end

  # DELETE /aquaviario/unidade_cargas/1
  # DELETE /aquaviario/unidade_cargas/1.json
  def destroy
    @aquaviario_unidade_carga = Aquaviario::UnidadeCarga.find(params[:id])
    @aquaviario_unidade_carga.destroy

    respond_to do |format|
      format.html { redirect_to aquaviario_unidade_cargas_url }
      format.json { head :no_content }
    end
  end
end

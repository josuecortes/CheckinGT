class Aquaviario::DadsController < ApplicationController

  def index
  #consulta de dads do usuario logado de determinada empresa
  
    @aquaviario_dads = Aquaviario::Dad.da_empresa(@usuario_logado.empresa_id).all
  end

  
  def show
    @aquaviario_dad = Aquaviario::Dad.da_empresa(@usuario_logado.empresa_id).find(params[:id])

  end

  
  def new
    @aquaviario_dad = Aquaviario::Dad.new

  end

  def edit
    @aquaviario_dad = Aquaviario::Dad.da_empresa(@usuario_logado.empresa_id).find(params[:id])
  end

  def create
    @aquaviario_dad = Aquaviario::Dad.new(params[:aquaviario_dad])
     
    if @aquaviario_dad.save
      flash[:success] = "Salva com Sucesso"
    	redirect_to aquaviario_dad_path(@aquaviario_dad)
    else
    	flash[:error] = "Erro ao Salvar"
    	render action: "new"
    end
  end

  def update
    @aquaviario_dad = Aquaviario::Dad.find(params[:id])
    
    if @aquaviario_dad.update_attributes(params[:aquaviario_dad])
      flash[:success] = "Atualizado com Sucesso"
    	redirect_to aquaviario_dad_path(@aquaviario_dad)
    else
    	flash[:error] = "Erro ao Atualizar"
    	render action: "edit"
    end
  end

  def destroy
    @aquaviario_dad = Aquaviario::Dad.da_empresa(@usuario_logado.empresa_id).find(params[:id])
   #@aquaviario_dad.destroy
    redirect_to aquaviario_dads_path
  end
end

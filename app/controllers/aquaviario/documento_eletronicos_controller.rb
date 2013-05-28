class Aquaviario::DocumentoEletronicosController < ApplicationController
  def index
    @dad = Aquaviario::Dad.da_empresa(@usuario_logado.empresa_id).find(params[:dad_id])
    @uc = @dad.unidade_cargas.find(params[:unidade_carga_id])
    @aquaviario_documento_eletronicos = @uc.documento_eletronicos.all
    
  end

  def show
    @dad = Aquaviario::Dad.da_empresa(@usuario_logado.empresa_id).find(params[:dad_id])
    @uc = @dad.unidade_cargas.find(params[:unidade_carga_id])
    @aquaviario_documento_eletronico = @uc.documento_eletronicos.find(params[:id])
  end

  def new
    @dad = Aquaviario::Dad.da_empresa(@usuario_logado.empresa_id).find(params[:dad_id])
    @uc = @dad.unidade_cargas.find(params[:unidade_carga_id])
    @aquaviario_documento_eletronico = Aquaviario::DocumentoEletronico.new

  end

  def edit
    @dad = Aquaviario::Dad.da_empresa(@usuario_logado.empresa_id).find(params[:dad_id])
    @uc = @dad.unidade_cargas.find(params[:unidade_carga_id])
    @aquaviario_documento_eletronico = @uc.documento_eletronicos.find(params[:id])
  end

  def create
    @dad = Aquaviario::Dad.da_empresa(@usuario_logado.empresa_id).find(params[:dad_id])
    @uc = @dad.unidade_cargas.find(params[:unidade_carga_id])
    @aquaviario_documento_eletronico = Aquaviario::DocumentoEletronico.new(params[:aquaviario_documento_eletronico])

    if @aquaviario_documento_eletronico.save
    	flash[:success] = "Salvo com Sucesso"
    	redirect_to aquaviario_dad_unidade_carga_documento_eletronicos_path(@dad, @uc)
    else
    	flash[:error] = "Erro ao Salvar"
    	render action: "new"
    end
  end

  def update
    @dad = Aquaviario::Dad.da_empresa(@usuario_logado.empresa_id).find(params[:dad_id])
    @uc = @dad.unidade_cargas.find(params[:unidade_carga_id])
    @aquaviario_documento_eletronico = @uc.documento_eletronicos.find(params[:id])
        
    if @aquaviario_documento_eletronico.update_attributes(params[:aquaviario_documento_eletronico])
    	flash[:success] = "Atualizado com Sucesso"
    	redirect_to aquaviario_dad_unidade_carga_documento_eletronicos_path(@dad, @uc)
    else
    	flash[:error] = "Erro ao Atualizar"
    	render action: "edit"    
    end
  end
  
  def destroy
    @dad = Aquaviario::Dad.da_empresa(@usuario_logado.empresa_id).find(params[:dad_id])
    @uc = @dad.unidade_cargas.find(params[:unidade_carga_id])
    @aquaviario_documento_eletronicos = @uc.documento_eletronicos.find(params[:id])
        
    if @aquaviario_documento_eletronico.destroy
		
		else
		
		end
  end
end

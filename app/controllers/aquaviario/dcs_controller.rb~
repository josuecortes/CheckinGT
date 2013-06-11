class Aquaviario::DcsController < ApplicationController
 def index
    @dad = Aquaviario::Dad.da_empresa(@usuario_logado.empresa_id).find(params[:dad_id])
    @uc = @dad.unidade_cargas.find(params[:unidade_carga_id])
    @aquaviario_documento_eletronicos = @uc.dcs.all
    
  end

  def show
    @dad = Aquaviario::Dad.da_empresa(@usuario_logado.empresa_id).find(params[:dad_id])
    @uc = @dad.unidade_cargas.find(params[:unidade_carga_id])
    @aquaviario_documento_eletronico = @uc.dcs.find(params[:id])
  end

  def new
    @dad = Aquaviario::Dad.da_empresa(@usuario_logado.empresa_id).find(params[:dad_id])
    @uc = @dad.unidade_cargas.find(params[:unidade_carga_id])
    @aquaviario_documento_eletronico = Aquaviario::Dc.new

  end

  def edit
    @dad = Aquaviario::Dad.da_empresa(@usuario_logado.empresa_id).find(params[:dad_id])
    @uc = @dad.unidade_cargas.find(params[:unidade_carga_id])
    @aquaviario_documento_eletronico = @uc.dcs.find(params[:id])
  end

  def create
   	@dad = Aquaviario::Dad.da_empresa(@usuario_logado.empresa_id).find(params[:dad_id])
    if @dad.status_dad_id == 10003
  		flash[:error] = "Este DAD esta registrado e nao pode ser retificado"
  		redirect_to aquaviario_dads_path
  	else
		  @uc = @dad.unidade_cargas.find(params[:unidade_carga_id])
		  @aquaviario_documento_eletronico = Aquaviario::Dc.new(params[:aquaviario_dc])

		  if @aquaviario_documento_eletronico.save
		  	if @dad.status_dad_id == 10001
		    	@dad.retificar_tudo	
		    end
		  	flash[:success] = "Salvo com Sucesso"
		  	redirect_to aquaviario_dad_unidade_carga_dcs_path(@dad, @uc)
		  else
		  	flash[:error] = "Erro ao Salvar"
		  	render action: "new"
		  end
  	end
  end

  def update
    @dad = Aquaviario::Dad.da_empresa(@usuario_logado.empresa_id).find(params[:dad_id])
    if @dad.status_dad_id == 10003
  		flash[:error] = "Este DAD esta registrado e nao pode ser retificado"
  		redirect_to aquaviario_dads_path
  	else
		  @uc = @dad.unidade_cargas.find(params[:unidade_carga_id])
		  @aquaviario_documento_eletronico = @uc.dcs.find(params[:id])
		      
		  if @aquaviario_documento_eletronico.update_attributes(params[:aquaviario_dc])
		  	if @dad.status_dad_id == 10001
		    	@dad.retificar_tudo	
		    end
		  	flash[:success] = "Atualizado com Sucesso"
		  	redirect_to aquaviario_dad_unidade_carga_dcs_path(@dad, @uc)
		  else
		  	flash[:error] = "Erro ao Atualizar"
		  	render action: "edit"    
		  end
		end
  end
  
  def destroy
    @dad = Aquaviario::Dad.da_empresa(@usuario_logado.empresa_id).find(params[:dad_id])
    if @dad.status_dad_id == 10003
  		flash[:error] = "Este DAD esta registrado e nao pode ser retificado"
  		redirect_to aquaviario_dads_path
  	else
		  @uc = @dad.unidade_cargas.find(params[:unidade_carga_id])
		  @aquaviario_documento_eletronico = @uc.dcs.find(params[:id])
		      
		  if @aquaviario_documento_eletronico.destroy
				if @dad.status_dad_id == 10001
		    	@dad.retificar_tudo	
		    end			
				flash[:success] = "Apagado com Sucesso"
				redirect_to aquaviario_dad_unidade_carga_dcs_path(@dad, @uc)
			else
				flash[:error] = "Erro ao Apagar"
				redirect_to aquaviario_dad_unidade_carga_dcs_path(@dad, @uc)
			end
		end
  end
end

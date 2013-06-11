class Aquaviario::UnidadeCargasController < ApplicationController
  # GET /aquaviario/unidade_cargas
  # GET /aquaviario/unidade_cargas.json
  def index
   
    
    @search_query = params[:q]
  	if @search_query == nil
    	@dad = Aquaviario::Dad.da_empresa(@usuario_logado.empresa_id).find(params[:dad_id])
    	@auc = @dad.unidade_cargas.all  	
    else
			@dad = Aquaviario::Dad.da_empresa(@usuario_logado.empresa_id).find(params[:dad_id])
    	@auc = @dad.unidade_cargas.search(@search_query).all
		end  		
  				
		#rooms = Room.search(@search_query)
		#@rooms = rooms.most_recent.map do |room|
		#RoomPresenter.new(room, self, false)
    
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
    if @dad.status_dad_id == 10003
  		flash[:error] = "Este DAD esta registrado e nao pode ser retificado"
  		redirect_to aquaviario_dads_path
  	else
			@aquaviario_unidade_carga = Aquaviario::UnidadeCarga.new(params[:aquaviario_unidade_carga])
		
		  if @aquaviario_unidade_carga.save
		    if @dad.status_dad_id == 10001
		    	@dad.retificar_tudo	
		    end
		    flash[:success] = "Salva com Sucesso"
		  	redirect_to aquaviario_dad_unidade_cargas_path(@dad)
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
		  @aquaviario_unidade_carga = @dad.unidade_cargas.find(params[:id])

		  
		   if @aquaviario_unidade_carga.update_attributes(params[:aquaviario_unidade_carga])
		    if @dad.status_dad_id == 10001
		    	@dad.retificar_tudo
		    end
		    flash[:success] = "Atualizado com Sucesso"
		  	redirect_to aquaviario_dad_unidade_cargas_path(@dad)
		  else
		  	flash[:error] = "Erro ao Atualizar"
		  	render action: "edit"
		  end
  	end
  end

  # DELETE /aquaviario/unidade_cargas/1
  # DELETE /aquaviario/unidade_cargas/1.json
  def destroy
    @dad = Aquaviario::Dad.da_empresa(@usuario_logado.empresa_id).find(params[:dad_id])
    if @dad.status_dad_id == 10003
  		flash[:error] = "Este DAD esta registrado e nao pode ser retificado"
  		redirect_to aquaviario_dads_path
  		
  	else
  		@aquaviario_unidade_carga = @dad.unidade_cargas.find(params[:id])
  		if @aquaviario_unidade_carga.dcs.size < 1
  			if @aquaviario_unidade_carga.destroy
  				if @dad.status_dad_id == 10001
		    		@dad.retificar_tudo
		    	end
		    	flash[:success] = "Apagado com Sucesso"
		  		redirect_to aquaviario_dad_unidade_cargas_path(@dad)
		  	else
  				flash[:success] = "Erro ao apagar"
		  		redirect_to aquaviario_dad_unidade_cargas_path(@dad)	
  			end
  				
  		else
  			flash[:error] = "Esta unidade contem documentos"
  			redirect_to aquaviario_dad_unidade_cargas_path(@dad)
  		end
  	end
	end
end


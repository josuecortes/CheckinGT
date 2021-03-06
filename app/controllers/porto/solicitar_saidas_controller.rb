class Porto::SolicitarSaidasController < ApplicationController

	def index
		@auc = Aquaviario::UnidadeCarga.para_empresa(@usuario_logado.empresa.portos).na_condicao.find(params[:unidade_carga_id])
	end
	
	def show
		@auc = Aquaviario::UnidadeCarga.para_empresa(@usuario_logado.empresa.portos).na_condicao.find(params[:id])
		if @auc.status_unidade_carga_id != 10010
			flash[:error] = "Esta unidade nao teve registrada sua saida"
			redirect_to porto_unidade_cargas_path
		end
		respond_to do |format|
      format.html { render :layout => "print"}
    end
	end

	def new
		#@auc = Aquaviario::UnidadeCarga.para_empresa(@usuario_logado.empresa.portos).na_condicao.find(params[:unidade_carga_id])
	  @auc = Aquaviario::UnidadeCarga.find(params[:unidade_carga_id])
		
		if @auc.status_unidade_carga_id == 10009 and (@auc.status_desembaraco_id == 10002 or @auc.status_desembaraco_id == 10003) and @auc.dad.status_dad_id == 10003 
			@auc.status_desembaraco_id = 10004
			@auc.status_unidade_carga_id = 10010
			@auc.status_desembaraco_data = DateTime.now
			if @auc.save
				flash[:success] = "Solicitacao de saida concluida"
				redirect_to porto_unidade_carga_solicitar_saida_path(@auc, @auc.id)
			else
				flash[:error] = "Erro ao solicitar a saida"
				redirect_to porto_unidade_cargas_path				
			end
		else
			flash[:error] = "Essa unidade nao pode ser liberada"
			redirect_to porto_unidade_cargas_path			
		end
	end 
end

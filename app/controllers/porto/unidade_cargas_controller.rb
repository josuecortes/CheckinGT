class Porto::UnidadeCargasController < ApplicationController
	
	def index
		@aucs = Aquaviario::UnidadeCarga.para_empresa(@usuario_logado.empresa.portos).na_condicao.paginate(:page => params[:page], :per_page => @@POR_PAGINA).all
	end
	
	def show
		@auc = Aquaviario::UnidadeCarga.para_empresa(@usuario_logado.empresa.portos).na_condicao.find(params[:id])
	end

	

end

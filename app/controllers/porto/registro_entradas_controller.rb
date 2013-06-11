class Porto::RegistroEntradasController < ApplicationController

	def index
		@aquaviario_dads = Aquaviario::Dad.para_empresa(@usuario_logado.empresa.portos).na_condicao.paginate(:page => params[:page], :per_page => 15	).all
	end
	
	def show
		@aquaviario_dad = Aquaviario::Dad.para_empresa(@usuario_logado.empresa.portos).na_condicao.find(params[:id])
	end
	
	def destroy
		@aquaviario_dad = Aquaviario::Dad.para_empresa(@usuario_logado.empresa.portos).na_condicao.find(params[:id])
		if @aquaviario_dad.registrar_tudo
			flash[:success] = "DAD Registrado"
			redirect_to porto_registro_entradas_path
		else
			flash[:error] = "Erro ao Registrar DAD"
			redirect_to porto_registro_entradas_path
		end
	end
	
	
	
end

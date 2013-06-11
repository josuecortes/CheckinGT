#encoding : utf-8
class Aquaviario::DadsController < ApplicationController

  def index
  #consulta de dads do usuario logado de determinada empresa
  	@search_query = params[:q]
  	if @search_query == nil
    	@aquaviario_dads = Aquaviario::Dad.da_empresa(@usuario_logado.empresa_id).paginate(:page => params[:page], :per_page => 15	).all
  	else
			@aquaviario_dads = Aquaviario::Dad.da_empresa(@usuario_logado.empresa_id).paginate(:page => params[:page], :per_page => 15	).search(@search_query).all
		end  		
  				
		#rooms = Room.search(@search_query)
		#@rooms = rooms.most_recent.map do |room|
		#RoomPresenter.new(room, self, false)

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
  	@aquaviario_dad = Aquaviario::Dad.da_empresa(@usuario_logado.empresa_id).find(params[:id])
  	if @aquaviario_dad.status_dad_id == 10003
  		flash[:error] = "Este DAD esta registrado e nao pode ser retificado"
  		redirect_to aquaviario_dads_path
  	else
		  if @aquaviario_dad.update_attributes(params[:aquaviario_dad])
		    if @aquaviario_dad.status_dad_id == 10001
		    	@aquaviario_dad.retificar_tudo
		    end
		    flash[:success] = "Atualizado com Sucesso"
		  	redirect_to aquaviario_dads_path
		  else
		  	flash[:error] = "Erro ao Atualizar"
		  	render action: "edit"
		  end
  	end
  end

  def destroy
   @aquaviario_dad = Aquaviario::Dad.da_empresa(@usuario_logado.empresa_id).find(params[:id])
   if @aquaviario_dad.status_dad_id == 10000
   	if @aquaviario_dad.unidade_cargas.size < 1
   		if @aquaviario_dad.destroy
   			flash[:success] = "Apagado com sucesso"
   			redirect_to aquaviario_dads_path
   		else
   			flash[:error] = "Erro ao apagar"
   			redirect_to aquaviario_dads_path
   		end
   	else 
   		flash[:error] = "Este DAD possui unidade de carga"
   		redirect_to aquaviario_dads_path
   	end
   else
   	flash[:error] = "Este DAD esta #{@aquaviario_dad.status_dad.descricao} e não pode ser apagado"
   	redirect_to aquaviario_dads_path
   end
  end
  
  def enviar
  	@aquaviario_dad = Aquaviario::Dad.da_empresa(@usuario_logado.empresa_id).find(params[:dad_id])
  	if @aquaviario_dad.status_dad_id == 10000
  		@aquaviario_dad.status_dad_id = 10001
  		if @aquaviario_dad.save
  			flash[:success] = "Dad Enviado com Sucesso"
  			redirect_to aquaviario_dads_path
  		else
  			flash[:error] = "Dad nao Enviado"
  			redirect_to aquaviario_dads_path
  		end
  	else
  		flash[:error] = "Este DAD ja foi Enviado"
   		redirect_to aquaviario_dads_path
  	end
  		
  end
  
end

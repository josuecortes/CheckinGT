class Core::RodoviariosController < ApplicationController
  # GET /core/rodoviarios
  # GET /core/rodoviarios.json
  def index
  	@empresa = Core::Empresa.find(params[:empresa_id])
    @core_rodoviario = @empresa.rodoviario
  end

  def show
  	@empresa = Core::Empresa.find(params[:empresa_id])
    @core_rodoviario = @empresa.rodoviario
  end

  def new
    @empresa = Core::Empresa.find(params[:empresa_id])
    @core_rodoviario = Core::Rodoviario.new
   
  end

  def edit
    @empresa = Core::Empresa.find(params[:empresa_id])
    @core_rodoviario = @empresa.rodoviario
  end

  	def create
  	@empresa = Core::Empresa.find(params[:empresa_id])
    @core_rodoviario = Core::Rodoviario.new(params[:core_rodoviario])
		if @empresa.rodoviario
   		flash[:error] = "Dados Rodoviarios ja registrados"
   		redirect_to core_empresa_rodoviarios_path(@empresa)
   	else
   		if @core_rodoviario.save
    	  flash[:success] = "Salvo com sucesso"
    	  redirect_to core_empresa_rodoviarios_path(@empresa)
   		else
    		flash[:error] = "Erro ao salvar"
    		render action: "new"      
    	end
  	end	
  end

  def update
   @empresa = Core::Empresa.find(params[:empresa_id])
   @core_rodoviario = @empresa.rodoviario

   if @core_rodoviario.update_attributes(params[:core_rodoviario])
   	flash[:success] = "Atualizado com sucesso"
   	redirect_to core_empresa_rodoviarios_path(@empresa)
   else
   	flash[:error] = "Erro ao Atualizar"
   	render action: "edit"      
   end
  end

  def destroy
  	@empresa = Core::Empresa.find(params[:empresa_id])
   	@core_rodoviario = @empresa.rodoviario
   	if @core_rodoviario.status == true
    	@core_rodoviario.status = false
    else
    	@core_rodoviario.status = true
    end
    
    if @core_rodoviario.save
    	flash[:success] = "Status alterado para #{@core_rodoviario.status}"
    	redirect_to core_empresa_rodoviarios_path(@empresa)
    else
    	flash[:error] = "Status nao pode ser alterado"
    	redirect_to core_empresa_rodoviarios_path(@empresa)
    end
  end
end

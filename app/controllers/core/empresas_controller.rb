class Core::EmpresasController < ApplicationController
  # GET /core/empresas
  # GET /core/empresas.json
  def index
    @core_empresas = Core::Empresa.all
    
  end

  def show
    @core_empresa = Core::Empresa.find(params[:id])

  end

  def new
    @core_empresa = Core::Empresa.new

  end

  def edit
    @core_empresa = Core::Empresa.find(params[:id])
  end

  # POST /core/empresas
  # POST /core/empresas.json
  def create
    @core_empresa = Core::Empresa.new(params[:core_empresa])
    
    if @core_empresa.save
    	flash[:success] = "Salva com Sucesso"
    	redirect_to core_empresa_path(@core_empresa)
    else
    	flash[:error] = "Erro ao Salvar"
    	render action: "new"
    end

  end

  # PUT /core/empresas/1
  # PUT /core/empresas/1.json
  def update
    @core_empresa = Core::Empresa.find(params[:id])

    if @core_empresa.update_attributes(params[:core_empresa])
    	flash[:success] = "Atualizado com Sucesso"
    	redirect_to core_empresa_path(@core_empresa)
    else
    	flash[:error] = "Erro ao Atualizar"
    	render action: "edit"
    end
    
  end

  # DELETE /core/empresas/1
  # DELETE /core/empresas/1.json
  def destroy
    @core_empresa = Core::Empresa.find(params[:id])
         
    if @core_empresa.status == TRUE
    	@core_empresa.status = FALSE
    	flash[:success] = "O status da empresa mudou para #{@core_empresa.status}"
    	@core_empresa.save
    	redirect_to core_empresas_path
    else
    	@core_empresa.status = TRUE
    	flash[:success] = "O status da empresa mudou para #{@core_empresa.status}"
    	@core_empresa.save
    	redirect_to core_empresas_path
    end
    
    #if @core_empresa.empresa_modulos.count == 0
			#flash[:success] = "Essa Empresa Nao tem modulos pode apagar"
    	#redirect_to core_empresas_path
    #else
    	#flash[:error] = "Essa Empresa tem modulos"
    	#redirect_to core_empresas_path
    #end
    
    #if @core_empresa.destroy
    	#flash[:success] = "Apagado com Sucesso"
    	#redirect_to core_empresas_path
    #else
     	#flash[:success] = "Erro ao Apagar"
    	#redirect_to core_empresas_path
    #end

  end
end

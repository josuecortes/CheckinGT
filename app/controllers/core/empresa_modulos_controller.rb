class Core::EmpresaModulosController < ApplicationController
  # GET /core/empresa_modulos
  # GET /core/empresa_modulos.json
  def index
    @empresa = Core::Empresa.find(params[:empresa_id])
    @empresa_modulos = @empresa.empresa_modulos.all
    @empresa_modulo = Core::EmpresaModulo.new

  end
  
  def create
  	@empresa = Core::Empresa.find(params[:empresa_id])
    @empresa_modulo = Core::EmpresaModulo.new(params[:core_empresa_modulo])
		
		if @empresa_modulo.save
			flash[:success] = "Salvo com Sucesso"
			redirect_to core_empresa_empresa_modulos_path(@empresa)
		else
			flash[:error] = "Erro ao Salvar"
			redirect_to core_empresa_empresa_modulos_path(@empresa)
		end
    
  end

  def destroy
  	@empresa = Core::Empresa.find(params[:empresa_id])
    @core_empresa_modulo = Core::EmpresaModulo.find(params[:id])
    if @core_empresa_modulo.destroy
    	flash[:success] = "Apagado com Sucesso"
			redirect_to core_empresa_empresa_modulos_path(@empresa)
    else
    	flash[:error] = "Erro ao Apagar"
			redirect_to core_empresa_empresa_modulos_path(@empresa)
    end

  end
end

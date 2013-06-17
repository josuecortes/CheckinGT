class Core::AquaviariosController < ApplicationController
  # GET /core/aquaviarios
  # GET /core/aquaviarios.json
  def index
    @empresa = Core::Empresa.find(params[:empresa_id])

  end

  def show
    @empresa = Core::Empresa.find(params[:empresa_id])

    @core_aquaviario = @empresa.aquaviario

  end

  def new
    @empresa = Core::Empresa.find(params[:empresa_id])
    @core_aquaviario = Core::Aquaviario.new

  end

  def edit
    @empresa = Core::Empresa.find(params[:empresa_id])
    @core_aquaviario = @empresa.aquaviario
  end

  def create
    @empresa = Core::Empresa.find(params[:empresa_id])
    if @empresa.aquaviario
      flash[:error] = "Dados Aquaviarios ja registrados"
      redirect_to core_empresa_aquaviarios_path(@empresa)
    else
      @core_aquaviario = Core::Aquaviario.new(params[:core_aquaviario])
      if @core_aquaviario.save
        flash[:success] = "Criado com sucesso"
        redirect_to core_empresa_aquaviarios_path(@empresa)
      else
        flash[:error] = "Erro ao salvar"
        render action: "new"
      end
    end
  end

  def update
    @empresa = Core::Empresa.find(params[:empresa_id])
    @core_aquaviario = @empresa.aquaviario

    if @core_aquaviario.update_attributes(params[:core_aquaviario])
      flash[:success] = "Atualizado com sucesso"
      redirect_to core_empresa_aquaviarios_path(@empresa)
    else
      flash[:error] = "Erro ao atualizar"
      render action: "edit"
    end
  end


  def destroy
    @empresa = Core::Empresa.find(params[:empresa_id])
    @core_aquaviario = @empresa.aquaviario
    if @core_aquaviario.status == true
      @core_aquaviario.status = false
    else
      @core_aquaviario.status = true
    end

    if @core_aquaviario.save
      flash[:success] = "Status alterado para #{@core_aquaviario.status}"
      redirect_to core_empresa_aquaviarios_path(@empresa)
    else
      flash[:error] = "Status nao pode ser alterado"
      redirect_to core_empresa_aquaviarios_path(@empresa)
    end
  end
end

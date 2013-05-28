class Core::TermoFielDepositariosController < ApplicationController
  # GET /core/termo_fiel_depositarios
  # GET /core/termo_fiel_depositarios.json
  def index
    @core_termo_fiel_depositarios = Core::TermoFielDepositario.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @core_termo_fiel_depositarios }
    end
  end

  # GET /core/termo_fiel_depositarios/1
  # GET /core/termo_fiel_depositarios/1.json
  def show
    @core_termo_fiel_depositario = Core::TermoFielDepositario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @core_termo_fiel_depositario }
    end
  end

  # GET /core/termo_fiel_depositarios/new
  # GET /core/termo_fiel_depositarios/new.json
  def new
    @core_termo_fiel_depositario = Core::TermoFielDepositario.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @core_termo_fiel_depositario }
    end
  end

  # GET /core/termo_fiel_depositarios/1/edit
  def edit
    @core_termo_fiel_depositario = Core::TermoFielDepositario.find(params[:id])
  end

  # POST /core/termo_fiel_depositarios
  # POST /core/termo_fiel_depositarios.json
  def create
    @core_termo_fiel_depositario = Core::TermoFielDepositario.new(params[:core_termo_fiel_depositario])

    respond_to do |format|
      if @core_termo_fiel_depositario.save
        format.html { redirect_to @core_termo_fiel_depositario, notice: 'Termo fiel depositario was successfully created.' }
        format.json { render json: @core_termo_fiel_depositario, status: :created, location: @core_termo_fiel_depositario }
      else
        format.html { render action: "new" }
        format.json { render json: @core_termo_fiel_depositario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /core/termo_fiel_depositarios/1
  # PUT /core/termo_fiel_depositarios/1.json
  def update
    @core_termo_fiel_depositario = Core::TermoFielDepositario.find(params[:id])

    respond_to do |format|
      if @core_termo_fiel_depositario.update_attributes(params[:core_termo_fiel_depositario])
        format.html { redirect_to @core_termo_fiel_depositario, notice: 'Termo fiel depositario was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @core_termo_fiel_depositario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/termo_fiel_depositarios/1
  # DELETE /core/termo_fiel_depositarios/1.json
  def destroy
    @core_termo_fiel_depositario = Core::TermoFielDepositario.find(params[:id])
    @core_termo_fiel_depositario.destroy

    respond_to do |format|
      format.html { redirect_to core_termo_fiel_depositarios_url }
      format.json { head :no_content }
    end
  end
end

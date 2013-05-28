class Core::FielDepositariosController < ApplicationController
  # GET /core/fiel_depositarios
  # GET /core/fiel_depositarios.json
  def index
    @core_fiel_depositarios = Core::FielDepositario.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @core_fiel_depositarios }
    end
  end

  # GET /core/fiel_depositarios/1
  # GET /core/fiel_depositarios/1.json
  def show
    @core_fiel_depositario = Core::FielDepositario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @core_fiel_depositario }
    end
  end

  # GET /core/fiel_depositarios/new
  # GET /core/fiel_depositarios/new.json
  def new
    @core_fiel_depositario = Core::FielDepositario.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @core_fiel_depositario }
    end
  end

  # GET /core/fiel_depositarios/1/edit
  def edit
    @core_fiel_depositario = Core::FielDepositario.find(params[:id])
  end

  # POST /core/fiel_depositarios
  # POST /core/fiel_depositarios.json
  def create
    @core_fiel_depositario = Core::FielDepositario.new(params[:core_fiel_depositario])

    respond_to do |format|
      if @core_fiel_depositario.save
        format.html { redirect_to @core_fiel_depositario, notice: 'Fiel depositario was successfully created.' }
        format.json { render json: @core_fiel_depositario, status: :created, location: @core_fiel_depositario }
      else
        format.html { render action: "new" }
        format.json { render json: @core_fiel_depositario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /core/fiel_depositarios/1
  # PUT /core/fiel_depositarios/1.json
  def update
    @core_fiel_depositario = Core::FielDepositario.find(params[:id])

    respond_to do |format|
      if @core_fiel_depositario.update_attributes(params[:core_fiel_depositario])
        format.html { redirect_to @core_fiel_depositario, notice: 'Fiel depositario was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @core_fiel_depositario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/fiel_depositarios/1
  # DELETE /core/fiel_depositarios/1.json
  def destroy
    @core_fiel_depositario = Core::FielDepositario.find(params[:id])
    @core_fiel_depositario.destroy

    respond_to do |format|
      format.html { redirect_to core_fiel_depositarios_url }
      format.json { head :no_content }
    end
  end
end

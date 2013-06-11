class Core::PatioPortosController < ApplicationController
  # GET /core/patio_portos
  # GET /core/patio_portos.json
  def index
    @core_patio_portos = Core::PatioPorto.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @core_patio_portos }
    end
  end

  # GET /core/patio_portos/1
  # GET /core/patio_portos/1.json
  def show
    @core_patio_porto = Core::PatioPorto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @core_patio_porto }
    end
  end

  # GET /core/patio_portos/new
  # GET /core/patio_portos/new.json
  def new
    @core_patio_porto = Core::PatioPorto.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @core_patio_porto }
    end
  end

  # GET /core/patio_portos/1/edit
  def edit
    @core_patio_porto = Core::PatioPorto.find(params[:id])
  end

  # POST /core/patio_portos
  # POST /core/patio_portos.json
  def create
    @core_patio_porto = Core::PatioPorto.new(params[:core_patio_porto])

    respond_to do |format|
      if @core_patio_porto.save
        format.html { redirect_to @core_patio_porto, notice: 'Patio porto was successfully created.' }
        format.json { render json: @core_patio_porto, status: :created, location: @core_patio_porto }
      else
        format.html { render action: "new" }
        format.json { render json: @core_patio_porto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /core/patio_portos/1
  # PUT /core/patio_portos/1.json
  def update
    @core_patio_porto = Core::PatioPorto.find(params[:id])

    respond_to do |format|
      if @core_patio_porto.update_attributes(params[:core_patio_porto])
        format.html { redirect_to @core_patio_porto, notice: 'Patio porto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @core_patio_porto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/patio_portos/1
  # DELETE /core/patio_portos/1.json
  def destroy
    @core_patio_porto = Core::PatioPorto.find(params[:id])
    @core_patio_porto.destroy

    respond_to do |format|
      format.html { redirect_to core_patio_portos_url }
      format.json { head :no_content }
    end
  end
end

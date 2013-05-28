class Core::TermoLacresController < ApplicationController
  # GET /core/termo_lacres
  # GET /core/termo_lacres.json
  def index
    @core_termo_lacres = Core::TermoLacre.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @core_termo_lacres }
    end
  end

  # GET /core/termo_lacres/1
  # GET /core/termo_lacres/1.json
  def show
    @core_termo_lacre = Core::TermoLacre.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @core_termo_lacre }
    end
  end

  # GET /core/termo_lacres/new
  # GET /core/termo_lacres/new.json
  def new
    @core_termo_lacre = Core::TermoLacre.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @core_termo_lacre }
    end
  end

  # GET /core/termo_lacres/1/edit
  def edit
    @core_termo_lacre = Core::TermoLacre.find(params[:id])
  end

  # POST /core/termo_lacres
  # POST /core/termo_lacres.json
  def create
    @core_termo_lacre = Core::TermoLacre.new(params[:core_termo_lacre])

    respond_to do |format|
      if @core_termo_lacre.save
        format.html { redirect_to @core_termo_lacre, notice: 'Termo lacre was successfully created.' }
        format.json { render json: @core_termo_lacre, status: :created, location: @core_termo_lacre }
      else
        format.html { render action: "new" }
        format.json { render json: @core_termo_lacre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /core/termo_lacres/1
  # PUT /core/termo_lacres/1.json
  def update
    @core_termo_lacre = Core::TermoLacre.find(params[:id])

    respond_to do |format|
      if @core_termo_lacre.update_attributes(params[:core_termo_lacre])
        format.html { redirect_to @core_termo_lacre, notice: 'Termo lacre was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @core_termo_lacre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/termo_lacres/1
  # DELETE /core/termo_lacres/1.json
  def destroy
    @core_termo_lacre = Core::TermoLacre.find(params[:id])
    @core_termo_lacre.destroy

    respond_to do |format|
      format.html { redirect_to core_termo_lacres_url }
      format.json { head :no_content }
    end
  end
end

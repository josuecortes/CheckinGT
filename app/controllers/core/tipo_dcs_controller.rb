class Core::TipoDcsController < ApplicationController
  # GET /core/tipo_dcs
  # GET /core/tipo_dcs.json
  def index
    @core_tipo_dcs = Core::TipoDc.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @core_tipo_dcs }
    end
  end

  # GET /core/tipo_dcs/1
  # GET /core/tipo_dcs/1.json
  def show
    @core_tipo_dc = Core::TipoDc.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @core_tipo_dc }
    end
  end

  # GET /core/tipo_dcs/new
  # GET /core/tipo_dcs/new.json
  def new
    @core_tipo_dc = Core::TipoDc.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @core_tipo_dc }
    end
  end

  # GET /core/tipo_dcs/1/edit
  def edit
    @core_tipo_dc = Core::TipoDc.find(params[:id])
  end

  # POST /core/tipo_dcs
  # POST /core/tipo_dcs.json
  def create
    @core_tipo_dc = Core::TipoDc.new(params[:core_tipo_dc])

    respond_to do |format|
      if @core_tipo_dc.save
        format.html { redirect_to @core_tipo_dc, notice: 'Tipo dc was successfully created.' }
        format.json { render json: @core_tipo_dc, status: :created, location: @core_tipo_dc }
      else
        format.html { render action: "new" }
        format.json { render json: @core_tipo_dc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /core/tipo_dcs/1
  # PUT /core/tipo_dcs/1.json
  def update
    @core_tipo_dc = Core::TipoDc.find(params[:id])

    respond_to do |format|
      if @core_tipo_dc.update_attributes(params[:core_tipo_dc])
        format.html { redirect_to @core_tipo_dc, notice: 'Tipo dc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @core_tipo_dc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/tipo_dcs/1
  # DELETE /core/tipo_dcs/1.json
  def destroy
    @core_tipo_dc = Core::TipoDc.find(params[:id])
    @core_tipo_dc.destroy

    respond_to do |format|
      format.html { redirect_to core_tipo_dcs_url }
      format.json { head :no_content }
    end
  end
end

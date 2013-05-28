class Core::SeloFiscalsController < ApplicationController
  # GET /core/selo_fiscals
  # GET /core/selo_fiscals.json
  def index
    @core_selo_fiscals = Core::SeloFiscal.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @core_selo_fiscals }
    end
  end

  # GET /core/selo_fiscals/1
  # GET /core/selo_fiscals/1.json
  def show
    @core_selo_fiscal = Core::SeloFiscal.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @core_selo_fiscal }
    end
  end

  # GET /core/selo_fiscals/new
  # GET /core/selo_fiscals/new.json
  def new
    @core_selo_fiscal = Core::SeloFiscal.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @core_selo_fiscal }
    end
  end

  # GET /core/selo_fiscals/1/edit
  def edit
    @core_selo_fiscal = Core::SeloFiscal.find(params[:id])
  end

  # POST /core/selo_fiscals
  # POST /core/selo_fiscals.json
  def create
    @core_selo_fiscal = Core::SeloFiscal.new(params[:core_selo_fiscal])

    respond_to do |format|
      if @core_selo_fiscal.save
        format.html { redirect_to @core_selo_fiscal, notice: 'Selo fiscal was successfully created.' }
        format.json { render json: @core_selo_fiscal, status: :created, location: @core_selo_fiscal }
      else
        format.html { render action: "new" }
        format.json { render json: @core_selo_fiscal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /core/selo_fiscals/1
  # PUT /core/selo_fiscals/1.json
  def update
    @core_selo_fiscal = Core::SeloFiscal.find(params[:id])

    respond_to do |format|
      if @core_selo_fiscal.update_attributes(params[:core_selo_fiscal])
        format.html { redirect_to @core_selo_fiscal, notice: 'Selo fiscal was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @core_selo_fiscal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/selo_fiscals/1
  # DELETE /core/selo_fiscals/1.json
  def destroy
    @core_selo_fiscal = Core::SeloFiscal.find(params[:id])
    @core_selo_fiscal.destroy

    respond_to do |format|
      format.html { redirect_to core_selo_fiscals_url }
      format.json { head :no_content }
    end
  end
end

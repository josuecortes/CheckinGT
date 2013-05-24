class Core::UfsController < ApplicationController
  # GET /core/ufs
  # GET /core/ufs.json
  def index
    @core_ufs = Core::Uf.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @core_ufs }
    end
  end

  # GET /core/ufs/1
  # GET /core/ufs/1.json
  def show
    @core_uf = Core::Uf.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @core_uf }
    end
  end

  # GET /core/ufs/new
  # GET /core/ufs/new.json
  def new
    @core_uf = Core::Uf.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @core_uf }
    end
  end

  # GET /core/ufs/1/edit
  def edit
    @core_uf = Core::Uf.find(params[:id])
  end

  # POST /core/ufs
  # POST /core/ufs.json
  def create
    @core_uf = Core::Uf.new(params[:core_uf])

    respond_to do |format|
      if @core_uf.save
        format.html { redirect_to @core_uf, notice: 'Uf was successfully created.' }
        format.json { render json: @core_uf, status: :created, location: @core_uf }
      else
        format.html { render action: "new" }
        format.json { render json: @core_uf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /core/ufs/1
  # PUT /core/ufs/1.json
  def update
    @core_uf = Core::Uf.find(params[:id])

    respond_to do |format|
      if @core_uf.update_attributes(params[:core_uf])
        format.html { redirect_to @core_uf, notice: 'Uf was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @core_uf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/ufs/1
  # DELETE /core/ufs/1.json
  def destroy
    @core_uf = Core::Uf.find(params[:id])
    @core_uf.destroy

    respond_to do |format|
      format.html { redirect_to core_ufs_url }
      format.json { head :no_content }
    end
  end
end

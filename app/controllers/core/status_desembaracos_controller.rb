class Core::StatusDesembaracosController < ApplicationController
  # GET /core/status_desembaracos
  # GET /core/status_desembaracos.json
  def index
    @core_status_desembaracos = Core::StatusDesembaraco.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @core_status_desembaracos }
    end
  end

  # GET /core/status_desembaracos/1
  # GET /core/status_desembaracos/1.json
  def show
    @core_status_desembaraco = Core::StatusDesembaraco.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @core_status_desembaraco }
    end
  end

  # GET /core/status_desembaracos/new
  # GET /core/status_desembaracos/new.json
  def new
    @core_status_desembaraco = Core::StatusDesembaraco.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @core_status_desembaraco }
    end
  end

  # GET /core/status_desembaracos/1/edit
  def edit
    @core_status_desembaraco = Core::StatusDesembaraco.find(params[:id])
  end

  # POST /core/status_desembaracos
  # POST /core/status_desembaracos.json
  def create
    @core_status_desembaraco = Core::StatusDesembaraco.new(params[:core_status_desembaraco])

    respond_to do |format|
      if @core_status_desembaraco.save
        format.html { redirect_to @core_status_desembaraco, notice: 'Status desembaraco was successfully created.' }
        format.json { render json: @core_status_desembaraco, status: :created, location: @core_status_desembaraco }
      else
        format.html { render action: "new" }
        format.json { render json: @core_status_desembaraco.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /core/status_desembaracos/1
  # PUT /core/status_desembaracos/1.json
  def update
    @core_status_desembaraco = Core::StatusDesembaraco.find(params[:id])

    respond_to do |format|
      if @core_status_desembaraco.update_attributes(params[:core_status_desembaraco])
        format.html { redirect_to @core_status_desembaraco, notice: 'Status desembaraco was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @core_status_desembaraco.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/status_desembaracos/1
  # DELETE /core/status_desembaracos/1.json
  def destroy
    @core_status_desembaraco = Core::StatusDesembaraco.find(params[:id])
    @core_status_desembaraco.destroy

    respond_to do |format|
      format.html { redirect_to core_status_desembaracos_url }
      format.json { head :no_content }
    end
  end
end

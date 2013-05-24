class Core::StatusDadsController < ApplicationController
  # GET /core/status_dads
  # GET /core/status_dads.json
  def index
    @core_status_dads = Core::StatusDad.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @core_status_dads }
    end
  end

  # GET /core/status_dads/1
  # GET /core/status_dads/1.json
  def show
    @core_status_dad = Core::StatusDad.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @core_status_dad }
    end
  end

  # GET /core/status_dads/new
  # GET /core/status_dads/new.json
  def new
    @core_status_dad = Core::StatusDad.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @core_status_dad }
    end
  end

  # GET /core/status_dads/1/edit
  def edit
    @core_status_dad = Core::StatusDad.find(params[:id])
  end

  # POST /core/status_dads
  # POST /core/status_dads.json
  def create
    @core_status_dad = Core::StatusDad.new(params[:core_status_dad])

    respond_to do |format|
      if @core_status_dad.save
        format.html { redirect_to @core_status_dad, notice: 'Status dad was successfully created.' }
        format.json { render json: @core_status_dad, status: :created, location: @core_status_dad }
      else
        format.html { render action: "new" }
        format.json { render json: @core_status_dad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /core/status_dads/1
  # PUT /core/status_dads/1.json
  def update
    @core_status_dad = Core::StatusDad.find(params[:id])

    respond_to do |format|
      if @core_status_dad.update_attributes(params[:core_status_dad])
        format.html { redirect_to @core_status_dad, notice: 'Status dad was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @core_status_dad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/status_dads/1
  # DELETE /core/status_dads/1.json
  def destroy
    @core_status_dad = Core::StatusDad.find(params[:id])
    @core_status_dad.destroy

    respond_to do |format|
      format.html { redirect_to core_status_dads_url }
      format.json { head :no_content }
    end
  end
end

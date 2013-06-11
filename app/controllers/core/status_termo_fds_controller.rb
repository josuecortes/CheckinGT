class Core::StatusTermoFdsController < ApplicationController
  # GET /core/status_termo_fds
  # GET /core/status_termo_fds.json
  def index
    @core_status_termo_fds = Core::StatusTermoFd.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @core_status_termo_fds }
    end
  end

  # GET /core/status_termo_fds/1
  # GET /core/status_termo_fds/1.json
  def show
    @core_status_termo_fd = Core::StatusTermoFd.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @core_status_termo_fd }
    end
  end

  # GET /core/status_termo_fds/new
  # GET /core/status_termo_fds/new.json
  def new
    @core_status_termo_fd = Core::StatusTermoFd.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @core_status_termo_fd }
    end
  end

  # GET /core/status_termo_fds/1/edit
  def edit
    @core_status_termo_fd = Core::StatusTermoFd.find(params[:id])
  end

  # POST /core/status_termo_fds
  # POST /core/status_termo_fds.json
  def create
    @core_status_termo_fd = Core::StatusTermoFd.new(params[:core_status_termo_fd])

    respond_to do |format|
      if @core_status_termo_fd.save
        format.html { redirect_to @core_status_termo_fd, notice: 'Status termo fd was successfully created.' }
        format.json { render json: @core_status_termo_fd, status: :created, location: @core_status_termo_fd }
      else
        format.html { render action: "new" }
        format.json { render json: @core_status_termo_fd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /core/status_termo_fds/1
  # PUT /core/status_termo_fds/1.json
  def update
    @core_status_termo_fd = Core::StatusTermoFd.find(params[:id])

    respond_to do |format|
      if @core_status_termo_fd.update_attributes(params[:core_status_termo_fd])
        format.html { redirect_to @core_status_termo_fd, notice: 'Status termo fd was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @core_status_termo_fd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/status_termo_fds/1
  # DELETE /core/status_termo_fds/1.json
  def destroy
    @core_status_termo_fd = Core::StatusTermoFd.find(params[:id])
    @core_status_termo_fd.destroy

    respond_to do |format|
      format.html { redirect_to core_status_termo_fds_url }
      format.json { head :no_content }
    end
  end
end

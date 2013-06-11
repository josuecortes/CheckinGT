class Core::TermoFdsController < ApplicationController
  # GET /core/termo_fds
  # GET /core/termo_fds.json
  def index
    @core_termo_fds = Core::TermoFd.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @core_termo_fds }
    end
  end

  # GET /core/termo_fds/1
  # GET /core/termo_fds/1.json
  def show
    @core_termo_fd = Core::TermoFd.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @core_termo_fd }
    end
  end

  # GET /core/termo_fds/new
  # GET /core/termo_fds/new.json
  def new
    @core_termo_fd = Core::TermoFd.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @core_termo_fd }
    end
  end

  # GET /core/termo_fds/1/edit
  def edit
    @core_termo_fd = Core::TermoFd.find(params[:id])
  end

  # POST /core/termo_fds
  # POST /core/termo_fds.json
  def create
    @core_termo_fd = Core::TermoFd.new(params[:core_termo_fd])

    respond_to do |format|
      if @core_termo_fd.save
        format.html { redirect_to @core_termo_fd, notice: 'Termo fd was successfully created.' }
        format.json { render json: @core_termo_fd, status: :created, location: @core_termo_fd }
      else
        format.html { render action: "new" }
        format.json { render json: @core_termo_fd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /core/termo_fds/1
  # PUT /core/termo_fds/1.json
  def update
    @core_termo_fd = Core::TermoFd.find(params[:id])

    respond_to do |format|
      if @core_termo_fd.update_attributes(params[:core_termo_fd])
        format.html { redirect_to @core_termo_fd, notice: 'Termo fd was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @core_termo_fd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/termo_fds/1
  # DELETE /core/termo_fds/1.json
  def destroy
    @core_termo_fd = Core::TermoFd.find(params[:id])
    @core_termo_fd.destroy

    respond_to do |format|
      format.html { redirect_to core_termo_fds_url }
      format.json { head :no_content }
    end
  end
end

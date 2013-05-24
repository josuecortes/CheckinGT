class Core::TipoEventosController < ApplicationController
  # GET /core/tipo_eventos
  # GET /core/tipo_eventos.json
  def index
    @core_tipo_eventos = Core::TipoEvento.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @core_tipo_eventos }
    end
  end

  # GET /core/tipo_eventos/1
  # GET /core/tipo_eventos/1.json
  def show
    @core_tipo_evento = Core::TipoEvento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @core_tipo_evento }
    end
  end

  # GET /core/tipo_eventos/new
  # GET /core/tipo_eventos/new.json
  def new
    @core_tipo_evento = Core::TipoEvento.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @core_tipo_evento }
    end
  end

  # GET /core/tipo_eventos/1/edit
  def edit
    @core_tipo_evento = Core::TipoEvento.find(params[:id])
  end

  # POST /core/tipo_eventos
  # POST /core/tipo_eventos.json
  def create
    @core_tipo_evento = Core::TipoEvento.new(params[:core_tipo_evento])

    respond_to do |format|
      if @core_tipo_evento.save
        format.html { redirect_to @core_tipo_evento, notice: 'Tipo evento was successfully created.' }
        format.json { render json: @core_tipo_evento, status: :created, location: @core_tipo_evento }
      else
        format.html { render action: "new" }
        format.json { render json: @core_tipo_evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /core/tipo_eventos/1
  # PUT /core/tipo_eventos/1.json
  def update
    @core_tipo_evento = Core::TipoEvento.find(params[:id])

    respond_to do |format|
      if @core_tipo_evento.update_attributes(params[:core_tipo_evento])
        format.html { redirect_to @core_tipo_evento, notice: 'Tipo evento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @core_tipo_evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /core/tipo_eventos/1
  # DELETE /core/tipo_eventos/1.json
  def destroy
    @core_tipo_evento = Core::TipoEvento.find(params[:id])
    @core_tipo_evento.destroy

    respond_to do |format|
      format.html { redirect_to core_tipo_eventos_url }
      format.json { head :no_content }
    end
  end
end

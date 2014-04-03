class HilosController < ApplicationController
  before_action :set_hilo, only: [:show, :edit, :update, :destroy]

  # GET /hilos
  # GET /hilos.json
  def index
    @hilos = Hilo.all
  end

  # GET /hilos/1
  # GET /hilos/1.json
  def show
  end

  # GET /hilos/new
  def new
    @hilo = Hilo.new
  end

  # GET /hilos/1/edit
  def edit
  end

  # POST /hilos
  # POST /hilos.json
  def create
    @hilo = Hilo.new(hilo_params)

    respond_to do |format|
      if @hilo.save
        format.html { redirect_to @hilo, notice: 'Hilo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @hilo }
      else
        format.html { render action: 'new' }
        format.json { render json: @hilo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hilos/1
  # PATCH/PUT /hilos/1.json
  def update
    respond_to do |format|
      if @hilo.update(hilo_params)
        format.html { redirect_to @hilo, notice: 'Hilo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @hilo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hilos/1
  # DELETE /hilos/1.json
  def destroy
    @hilo.destroy
    respond_to do |format|
      format.html { redirect_to hilos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hilo
      @hilo = Hilo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hilo_params
      params.require(:hilo).permit(:texto, :usuario_id, :estado)
    end
end

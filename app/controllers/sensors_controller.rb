class SensorsController < ApplicationController
  before_action :set_sensor, only: [:show, :edit, :update, :destroy]
  before_action :require_user, except: [:show,:index]
  before_action :require_same_user, only: [:edit,:update,:destroy]

  # GET /sensors
  # GET /sensors.json
  def index
    @sensors = Sensor.paginate(:page => params[:page], :per_page => 5)
  end

  # GET /sensors/1
  # GET /sensors/1.json
  def show
  end

  def aggiorna_firmware
    @sensors = Sensor.find(params[:id])
  end  

  def caricamento_firmware
    
    respond_to do |format|
      if @sensor.update(sensor_params)
        format.html { redirect_to @sensor, notice: 'Sensor was successfully updated.' }
        format.json { render :show, status: :ok, location: @sensor }
      else
        format.html { render :edit }
        format.json { render json: @sensor.errors, status: :unprocessable_entity }
      end
    end
  end

  def sensori_pubblici
    @sensors = Sensor.paginate(:page => params[:page], :per_page => 5)
  end  
  # GET /sensors/new
  def new
    @sensor = Sensor.new
  end

  # GET /sensors/1/edit
  def edit
  end



  # POST /sensors
  # POST /sensors.json
  def create
    @sensor = Sensor.new(sensor_params)
    @sensor.user_id=current_user.id
    
    respond_to do |format|
      if @sensor.save
        format.html { redirect_to @sensor, notice: 'Sensor was successfully created.' }
        format.json { render :show, status: :created, location: @sensor }
      else
        format.html { render :new }
        format.json { render json: @sensor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sensors/1
  # PATCH/PUT /sensors/1.json
  def update
    respond_to do |format|
      if @sensor.update(sensor_params)
        format.html { redirect_to @sensor, notice: 'Sensor was successfully updated.' }
        format.json { render :show, status: :ok, location: @sensor }
      else
        format.html { render :edit }
        format.json { render json: @sensor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sensors/1
  # DELETE /sensors/1.json
  def destroy
    @sensor.destroy
    respond_to do |format|
      format.html { redirect_to sensors_url, notice: 'Sensor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sensor
      @sensor = Sensor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sensor_params
      params.require(:sensor).permit(:mac, :url, :tipo, :latitudine, :longitudine, :unit_misura,  :public, :downtime_to_alarm, :last_firmware_update,:user_id,:sensors_group_id,:image)
    end

    def require_same_user
      if current_user != @sensor.user 
        flash[:alert]="Puoi modificare o eliminare solo i tuoi sensori"
        redirect_to @sensors
      end
    end
end

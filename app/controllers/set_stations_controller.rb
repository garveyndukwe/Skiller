class SetStationsController < ApplicationController
  before_action :set_set_station, only: [:show, :edit, :update, :destroy]

  # GET /set_stations
  # GET /set_stations.json
  def index
    @set_stations = SetStation.all
  end

  # GET /set_stations/1
  # GET /set_stations/1.json
  def show
  end

  # GET /set_stations/new
  def new
    @set_station = SetStation.new
  end

  # GET /set_stations/1/edit
  def edit
  end

  # POST /set_stations
  # POST /set_stations.json
  def create
    @set_station = SetStation.new(set_station_params)

    respond_to do |format|
      if @set_station.save
        format.html { redirect_to @set_station, notice: 'Set station was successfully created.' }
        format.json { render :show, status: :created, location: @set_station }
      else
        format.html { render :new }
        format.json { render json: @set_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /set_stations/1
  # PATCH/PUT /set_stations/1.json
  def update
    respond_to do |format|
      if @set_station.update(set_station_params)
        format.html { redirect_to @set_station, notice: 'Set station was successfully updated.' }
        format.json { render :show, status: :ok, location: @set_station }
      else
        format.html { render :edit }
        format.json { render json: @set_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /set_stations/1
  # DELETE /set_stations/1.json
  def destroy
    @set_station.destroy
    respond_to do |format|
      format.html { redirect_to set_stations_url, notice: 'Set station was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_set_station
      @set_station = SetStation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def set_station_params
      params.require(:set_station).permit(:code, :name, :display)
    end
end

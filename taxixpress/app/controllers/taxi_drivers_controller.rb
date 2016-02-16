class TaxiDriversController < ApplicationController
  before_action :set_taxi_driver, only: [:show, :edit, :update, :destroy]

  # GET /taxi_drivers
  # GET /taxi_drivers.json
  def index
    @taxi_drivers = TaxiDriver.all
  end

  # GET /taxi_drivers/1
  # GET /taxi_drivers/1.json
  def show
  end

  # GET /taxi_drivers/new
  def new
    @taxi_driver = TaxiDriver.new
  end

  # GET /taxi_drivers/1/edit
  def edit
  end

  # POST /taxi_drivers
  # POST /taxi_drivers.json
  def create
    @taxi_driver = TaxiDriver.new(taxi_driver_params)

    respond_to do |format|
      if @taxi_driver.save
        format.html { redirect_to @taxi_driver, notice: 'Taxi driver was successfully created.' }
        format.json { render :show, status: :created, location: @taxi_driver }
      else
        format.html { render :new }
        format.json { render json: @taxi_driver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /taxi_drivers/1
  # PATCH/PUT /taxi_drivers/1.json
  def update
    respond_to do |format|
      if @taxi_driver.update(taxi_driver_params)
        format.html { redirect_to @taxi_driver, notice: 'Taxi driver was successfully updated.' }
        format.json { render :show, status: :ok, location: @taxi_driver }
      else
        format.html { render :edit }
        format.json { render json: @taxi_driver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taxi_drivers/1
  # DELETE /taxi_drivers/1.json
  def destroy
    @taxi_driver.destroy
    respond_to do |format|
      format.html { redirect_to taxi_drivers_url, notice: 'Taxi driver was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taxi_driver
      @taxi_driver = TaxiDriver.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def taxi_driver_params
      params.require(:taxi_driver).permit(:id_driver, :id_user)
    end
end

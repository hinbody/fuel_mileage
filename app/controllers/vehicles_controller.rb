class VehiclesController < ApplicationController

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)

    if @vehicle.save
      flash[:notice] = "Vehicle has been created."
      redirect_to @vehicle
    else
      # nothing yet
    end
  end

  def show
    @vehicle = Vehicle.find(params[:id])
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(:name, :make, :model, :year, :engine_type)
  end
end

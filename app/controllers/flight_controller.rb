class FlightController < ApplicationController
  def index
    if params.has_key?(:search)
      @all_flights = Flight.where("destination LIKE ?", "%#{params[:search]}%")
    else
      @all_flights = Flight.all
    end
  end

  def show
    @flight = Flight.find(params[:id])
  end
end

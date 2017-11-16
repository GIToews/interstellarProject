class FlightController < ApplicationController
  def index
    if params.has_key?(:search)
      @flights = Flight.where("destination LIKE ?", "%#{params[:search]}%")
    else
      @flights = Flight.all
    end
  end

  def show
    @flight = Flight.find(params[:id])
  end
end

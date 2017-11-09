class FlightController < ApplicationController
  def index
    if params.has_key?(:search)
      @all_flights = Flight.where("to_destination LIKE ? OR from_destination LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%")
    else
      @all_flights = Flight.all
    end
  end

  def show
  end
end

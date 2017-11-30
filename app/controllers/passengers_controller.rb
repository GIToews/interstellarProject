class PassengersController < ApplicationController
  def create
    @passengers = Passenger.all
  end

  def show
    @passengers = Passenger.all
  end
end

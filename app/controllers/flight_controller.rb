class FlightController < ApplicationController
  def index

    @select_list = Array.new()
    @select_list.push(["None", 0])

    @rockets = Rocket.all

    @rockets.each do |rocket|

      select_item = [rocket.name, rocket.id]

      @select_list.push(select_item)
    end


    @flights = Flight.all.order(:price)

    @rocketype = params[:rocketType]

    if (params.has_key?(:rocketType) && params[:rocketType] != "0")
      @flights = @flights.where(rocket_id: params[:rocketType])
    end

    if params.has_key?(:search)
      @flights = @flights.where("name LIKE ?", "%#{params[:search]}%")
    end
  end

  def show
    @flight = Flight.find(params[:id])
  end
end

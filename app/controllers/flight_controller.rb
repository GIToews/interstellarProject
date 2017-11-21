class FlightController < ApplicationController

  before_action :initialize_cart, only: [:cart]

  def index

    @select_list = Array.new()
    @select_list.push(["None", 0])

    @rockets = Rocket.all

    @rockets.each do |rocket|

      select_item = [rocket.name, rocket.id]

      @select_list.push(select_item)
    end


    @flights = Flight.all

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

  def cart

    if params.has_key?(:id)
      add_flight_ticket_to_cart
    end

    if params.has_key?(:quantity) #&& params.has_key?(:flight_id)
      change_flight_ticket_quantity
    end

    # change_flight_ticket_quantity

    @cart_flights = session[:cart]

  end

  # Private helper methods ################################################
  private

  def initialize_cart
    # reset_session
    session[:cart] ||= []
  end

  def add_flight_ticket_to_cart
    existing_item = false

    @cart_flights
    @cart_flight = Flight.find(params[:id])

    session[:cart].each do |item|
      if item[0]["id"] == @cart_flight.id
        item[1] = item[1].to_i + 1
        existing_item = true
      end
    end

    if !existing_item
      session[:cart] << [@cart_flight, 1]
    end
    redirect_to cart_path
  end

  def change_flight_ticket_quantity

    session[:cart].each do |item|

      if item[0]["id"] == params[:flight_id].to_i
        if params[:quantity].to_i <= 0
          session[:cart].delete(item)
        else
          item[1] = params[:quantity]
        end
      end
    end

    redirect_to cart_path
  end
end

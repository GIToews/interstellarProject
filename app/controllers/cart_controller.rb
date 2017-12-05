class CartController < ApplicationController

  before_action :initialize_cart, only: [:index]

  def index

    if params.has_key?(:id)
      add_flight_ticket_to_cart
    end


    @test = "nothing"

    # Doesnt enter here ()
    if params.has_key?(:flight_quantity) #&& params.has_key?(:flight_id)
      @test = "something"

      change_flight_ticket_quantity
    end


    @cart_flights = session[:cart]

    if params.has_key?(:orderBy)
      @list.sort_by{|e| e[:time_ago]}
    end

    @select_list = Array.new()
    @select_list.push(["None", 0])
    @select_list.push(["Arrival Descending", 1])
    @select_list.push(["Arrival Ascending", 2])
    @select_list.push(["Departure Descending", 3])
    @select_list.push(["Departure Ascending", 4])
  end

  # Private helper methods ################################################
  private

  def initialize_cart
    # reset_session
    session[:cart] ||= []
  end

  # def add_flight_ticket_to_cart
  #   existing_item = false
  #
  #   @cart_flights
  #   @cart_flight = Flight.find(params[:id])
  #
  #   session[:cart].each do |item|
  #     if item[0]["id"] == @cart_flight.id
  #       item[1] = item[1].to_i + 1
  #       existing_item = true
  #     end
  #   end
  #
  #   if !existing_item
  #     session[:cart] << [@cart_flight, 1]
  #   end
  #   redirect_to cart_path
  # end

  def add_flight_ticket_to_cart
    existing_item = false

    @cart_flight = Flight.find(params[:id])

    session[:cart].each do |item|
      if item["id"].to_s == @cart_flight.id.to_s
        item["quantity"] = item["quantity"].to_i + 1
        existing_item = true
      end
    end

    if !existing_item
      session[:cart] << {:name => @cart_flight.name,
                         :id => @cart_flight.id,
                         :quantity => 1,
                         :departure => @cart_flight.departure_time,
                         :arrival => @cart_flight.arrival_time}
    end
    redirect_to cart_path
  end

  def change_flight_ticket_quantity

    session[:cart].each do |item|

      if item["id"].to_s == params[:flight_id].to_s
        if params[:flight_quantity].to_i <= 0
          session[:cart].delete(item)
          @test = "delete"
        else
          item["quantity"] = params[:flight_quantity]
          @test = "add"
        end
      end
    end

    redirect_to cart_path
  end
end

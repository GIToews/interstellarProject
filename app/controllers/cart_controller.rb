class CartController < ApplicationController

  before_action :initialize_cart, only: [:index]

  def index

    if params.has_key?(:id)
      add_flight_ticket_to_cart
    end

    if params.has_key?(:flight_quantity) #&& params.has_key?(:flight_id)
      change_flight_ticket_quantity
    end

    @cart_flights = session[:cart]

    if params.has_key?(:orderBy)
      if params[:orderBy].to_i == 1
        @cart_flights = @cart_flights.sort_by{|flight| flight["arrival"].to_f}
      elsif params[:orderBy].to_i == 2
        @cart_flights = @cart_flights.sort_by{|flight| -flight["arrival"].to_f}
      elsif params[:orderBy].to_i == 3
        @cart_flights = @cart_flights.sort_by{|flight| flight["departure"].to_f}
      elsif params[:orderBy].to_i == 4
        @cart_flights = @cart_flights.sort_by{|flight| -flight["departure"].to_f}
      end
    end

    if params.has_key?(:filterBy)

      if params[:filterBy].to_i == 0
        @cart_flights.each  do |item|
          item["show"] = true;
        end
      elsif params[:filterBy].to_i == 1

        @cart_flights.each  do |item|
          if item["sale"].to_f <= 0.0
            item["show"] = false;
          else
            item["show"] = true;
          end
        end
      elsif params[:filterBy].to_i == 2
        @cart_flights.each  do |item|
          if item["new"].to_s == "false"
            item["show"] = false;
          else
            item["show"] = true;
          end
        end
      elsif params[:filterBy].to_i == 3

        @cart_flights.each  do |item|
          if (item["sale"].to_f > 0.0) && (item["new"].to_s == "true")
            item["show"] = true;
          else
            item["show"] = false;
          end
        end
      end
    end

    @select_order_list = Array.new()
    @select_order_list.push(["None", 0])
    @select_order_list.push(["Arrival Ascending", 1])
    @select_order_list.push(["Arrival Descending", 2])
    @select_order_list.push(["Departure Ascending", 3])
    @select_order_list.push(["Departure Descending", 4])

    @select_filter_list = Array.new()
    @select_filter_list.push(["None", 0])
    @select_filter_list.push(["Sale items", 1])
    @select_filter_list.push(["New items", 2])
    @select_filter_list.push(["New Sale items", 3])

  end

  # Private helper methods ################################################
  private

  def initialize_cart
    # reset_session
    session[:cart] ||= []
  end

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
                         :arrival => @cart_flight.arrival_time,
                         :sale => @cart_flight.sale,
                         :new => @cart_flight.new,
                         :price => @cart_flight.price,
                         :show => "true"}
    end
    redirect_to cart_path
  end

  def change_flight_ticket_quantity

    session[:cart].each do |item|

      if item["id"].to_s == params[:flight_id].to_s
        if params[:flight_quantity].to_i <= 0
          session[:cart].delete(item)
        else
          item["quantity"] = params[:flight_quantity]
        end
      end
    end

    redirect_to cart_path
  end
end

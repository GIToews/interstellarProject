class OrderController < ApplicationController
  def index
    if session.has_key?(:user_id)
      #Display all user orders
      allOrderIds = User.where(id: session[:user_id]).first.flight_passengers.uniq.pluck(:order_id).uniq

      @allOrders = Order.find(allOrderIds).order(:created_at)

    else
      redirect_to new_sessions_path
    end
  end

  def show
    if session.has_key?(:user_id)

      @myOrder
      if params.has_key?(:id)
        #Display a users order
        @myOrder = Order.where(id: params[:id]).first

      else

        @myOrder = Order.create(subtotal: 0)
        @subTotal = 0.0
        session[:cart].each do |item|

          @newItem = FlightPassenger.create(quantity: item["quantity"], user_id: session[:user_id], order_id: @myOrder.id, flight_id: item["id"])

          @subTotal += Flight.where(id: item["id"]).first.price.to_f * item["quantity"].to_f
        end

        @myOrder.subtotal = @subTotal
        @myOrder.save

        session[:cart] = []
        #Create new user
      end

      @pst = 0.0
      @gst = 0.0
      @hst = 0.0

      @province = @myOrder.flight_passengers.first.user.province

      @pst = @province.pst
      @gst = @province.gst
      @hst = @province.hst

      @subTotal = @myOrder.subtotal.to_f
      @total = @subTotal

      @total = @subTotal + (@pst.to_f * @subTotal) + (@gst.to_f * @subTotal) + (@hst.to_f * @subTotal)
    else
      redirect_to new_sessions_path
    end
  end
end

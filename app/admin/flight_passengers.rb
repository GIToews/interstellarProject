ActiveAdmin.register FlightPassenger do

  permit_params :flight_id, :user_id, :order_id, :quantity

end
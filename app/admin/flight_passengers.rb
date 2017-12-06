ActiveAdmin.register FlightPassenger do

  permit_params :flight_id, :user_id, :quantity

end
ActiveAdmin.register Flight do

  permit_params :destination_id, :departure_time, :arrival_time, :seats, :name, :rocket_id

end

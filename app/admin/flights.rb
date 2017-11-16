ActiveAdmin.register Flight do

  permit_params :destination, :departure_time, :arrival_time, :seats, :name

end

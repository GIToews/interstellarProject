ActiveAdmin.register User do

  permit_params :name, :cntry, :province_id, :city
end

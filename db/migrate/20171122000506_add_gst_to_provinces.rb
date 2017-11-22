class AddGstToProvinces < ActiveRecord::Migration[5.1]
  def change
    add_column :provinces, :gst, :float
  end
end

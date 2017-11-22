class RemoveProvinceIdFromFlight < ActiveRecord::Migration[5.1]
  def change
    remove_column :flights, :province_id, :integer
  end
end

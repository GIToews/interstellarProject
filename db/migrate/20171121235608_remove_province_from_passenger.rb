class RemoveProvinceFromPassenger < ActiveRecord::Migration[5.1]
  def change
    remove_column :passengers, :province, :string
  end
end

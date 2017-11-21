class AddProvinceToPassenger < ActiveRecord::Migration[5.1]
  def change
    add_column :passengers, :province, :string
  end
end

class AddQuantityToFlightPassenger < ActiveRecord::Migration[5.1]
  def change
    add_column :flight_passengers, :quantity, :integer
  end
end

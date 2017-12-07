class RemovePassengersFromFlightPassengers < ActiveRecord::Migration[5.1]
  def change
    # remove_index(:flight_passenger, :name => 'passenger_id')
    remove_column :flight_passengers, :passenger_id
  end
end

class AddOrderIdToFlightPassengers < ActiveRecord::Migration[5.1]
  def change
    change_table :flight_passengers do |t|
      t.belongs_to :order, index: true
    end
  end
end

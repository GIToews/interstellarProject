class CreateFlights < ActiveRecord::Migration[5.1]
  def change
    create_table :flights do |t|
      t.string :destination
      t.datetime :departure_time
      t.datetime :arrival_time
      t.integer :seat
      t.string :flight_number

      t.timestamps
    end
  end
end

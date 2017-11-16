class RemoveDestinationFromFlights < ActiveRecord::Migration[5.1]
  def change
    remove_column :flights, :destination, :string
  end
end

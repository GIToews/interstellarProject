class RemoveDestinationIdFromFlight < ActiveRecord::Migration[5.1]
  def change
    remove_column :flights, :destination_id, :integer
  end
end

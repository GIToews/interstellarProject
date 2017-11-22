class AddDestinationIdToFlight < ActiveRecord::Migration[5.1]
  def change
    change_table :flights do |t|
      t.belongs_to :destination, index: true
    end
  end
end

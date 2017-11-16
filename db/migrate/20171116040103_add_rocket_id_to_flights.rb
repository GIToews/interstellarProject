class AddRocketIdToFlights < ActiveRecord::Migration[5.1]
  def change
    change_table :flights do |t|
      t.belongs_to :rocket, index: true
    end
  end
end

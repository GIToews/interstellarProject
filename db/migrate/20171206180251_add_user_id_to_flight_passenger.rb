class AddUserIdToFlightPassenger < ActiveRecord::Migration[5.1]
  def change
    change_table :flight_passengers do |t|
      t.belongs_to :user, index: true
    end
  end
end

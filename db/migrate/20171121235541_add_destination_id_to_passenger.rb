class AddDestinationIdToPassenger < ActiveRecord::Migration[5.1]
  def change
    change_table :flights do |t|
      t.belongs_to :province, index: true
    end
  end
end

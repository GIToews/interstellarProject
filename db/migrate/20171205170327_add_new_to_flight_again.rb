class AddNewToFlightAgain < ActiveRecord::Migration[5.1]
  def change
    add_column :flights, :new, :boolean, :default => true
  end
end

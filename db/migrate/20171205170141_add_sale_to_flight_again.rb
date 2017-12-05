class AddSaleToFlightAgain < ActiveRecord::Migration[5.1]
  def change
    add_column :flights, :sale, :float, :default => 0.0
  end
end

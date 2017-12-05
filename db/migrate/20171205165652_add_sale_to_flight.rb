class AddSaleToFlight < ActiveRecord::Migration[5.1]
  def change
    add_column :flights, :sale, :float
  end
end

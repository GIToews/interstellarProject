class AddPriceToFlight < ActiveRecord::Migration[5.1]
  def change
    add_column :flights, :price, :float
  end
end

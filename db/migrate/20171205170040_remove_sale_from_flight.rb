class RemoveSaleFromFlight < ActiveRecord::Migration[5.1]
  def change
    remove_column :flights, :sale, :float
  end
end

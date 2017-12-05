class RemoveNewFromFlight < ActiveRecord::Migration[5.1]
  def change
    remove_column :flights, :new, :boolean
  end
end

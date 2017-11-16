class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :flights, :flight_number, :name
  end
end

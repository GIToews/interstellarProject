class ChangeAnotherColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :flights, :seat, :seats
  end
end

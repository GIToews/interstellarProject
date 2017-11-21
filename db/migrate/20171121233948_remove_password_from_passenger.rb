class RemovePasswordFromPassenger < ActiveRecord::Migration[5.1]
  def change
    remove_column :passengers, :password, :string
  end
end

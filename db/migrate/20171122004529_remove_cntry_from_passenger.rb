class RemoveCntryFromPassenger < ActiveRecord::Migration[5.1]
  def change
    remove_column :passengers, :Cntry, :string
  end
end

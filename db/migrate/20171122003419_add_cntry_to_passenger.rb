class AddCntryToPassenger < ActiveRecord::Migration[5.1]
  def change
    add_column :passengers, :Cntry, :string
  end
end

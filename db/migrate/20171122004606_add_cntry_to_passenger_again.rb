class AddCntryToPassengerAgain < ActiveRecord::Migration[5.1]
  def change
    add_column :passengers, :cntry, :string
  end
end

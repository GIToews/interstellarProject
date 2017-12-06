class AddPassengerColumnsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string
    add_column :users, :city, :string
    add_column :users, :cntry, :string

    change_table :users do |t|
      t.belongs_to :province, index: true
    end
  end
end

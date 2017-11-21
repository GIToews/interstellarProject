class AddCityToPassenger < ActiveRecord::Migration[5.1]
  def change
    add_column :passengers, :city, :string
  end
end

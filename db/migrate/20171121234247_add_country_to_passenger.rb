class AddCountryToPassenger < ActiveRecord::Migration[5.1]
  def change
    add_column :passengers, :country, :string
  end
end

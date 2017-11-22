class RemoveCountryFromPassenger < ActiveRecord::Migration[5.1]
  def change
    remove_column :passengers, :country, :string
  end
end

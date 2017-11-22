class RemoveRateFromProvince < ActiveRecord::Migration[5.1]
  def change
    remove_column :provinces, :rate, :float
  end
end

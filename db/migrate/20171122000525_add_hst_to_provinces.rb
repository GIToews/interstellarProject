class AddHstToProvinces < ActiveRecord::Migration[5.1]
  def change
    add_column :provinces, :hst, :float
  end
end

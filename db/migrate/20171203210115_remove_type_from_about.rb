class RemoveTypeFromAbout < ActiveRecord::Migration[5.1]
  def change
    remove_column :abouts, :type, :String
  end
end

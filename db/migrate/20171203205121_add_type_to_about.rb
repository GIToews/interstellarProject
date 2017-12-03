class AddTypeToAbout < ActiveRecord::Migration[5.1]
  def change
    add_column :abouts, :type, :string
  end
end

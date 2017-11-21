class RemoveUserNameFromPassenger < ActiveRecord::Migration[5.1]
  def change
    remove_column :passengers, :user_name, :string
  end
end

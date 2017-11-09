class CreatePassengers < ActiveRecord::Migration[5.1]
  def change
    create_table :passengers do |t|
      t.string :user_name
      t.string :name
      t.string :password

      t.timestamps
    end
  end
end

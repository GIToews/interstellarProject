class CreateRockets < ActiveRecord::Migration[5.1]
  def change
    create_table :rockets do |t|
      t.string :name
      t.string :company

      t.timestamps
    end
  end
end

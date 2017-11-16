class CreatePlanets < ActiveRecord::Migration[5.1]
  def change
    create_table :planets do |t|
      t.string :name
      t.float :day_in_hours

      t.timestamps
    end
  end
end

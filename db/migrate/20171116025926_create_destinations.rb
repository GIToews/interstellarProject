class CreateDestinations < ActiveRecord::Migration[5.1]
  def change
    create_table :destinations do |t|

      t.belongs_to :star, index: true
      t.belongs_to :planet, index: true
      t.timestamps
    end
  end
end

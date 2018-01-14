class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.references :game
      t.references :piece
      t.integer :coordinates, array: true, default: []
    end
  end
end

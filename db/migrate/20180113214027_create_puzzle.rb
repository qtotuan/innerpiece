class CreatePuzzle < ActiveRecord::Migration[5.1]
  def change
    create_table :puzzles do |t|
      t.string :title, null: false
      t.references :category
    end
  end
end

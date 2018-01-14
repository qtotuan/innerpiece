class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.boolean :completed
      t.references :user
      t.references :puzzle
      t.references :size
    end
  end
end

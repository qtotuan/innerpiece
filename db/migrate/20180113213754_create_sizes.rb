class CreateSizes < ActiveRecord::Migration[5.1]
  def change
    create_table :sizes do |t|
      t.integer :row
      t.integer :column
    end
  end
end

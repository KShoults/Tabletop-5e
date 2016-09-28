class CreateMaps < ActiveRecord::Migration[5.0]
  def change
    create_table :maps do |t|
      t.string :name
      t.integer :length
      t.integer :width
      t.string :tiles
      t.string :tokens
      
      t.timestamps
    end
  end
end

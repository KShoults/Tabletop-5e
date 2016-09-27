class CreateCharacters < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :strength
      t.integer :dexterity
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.string :character_class
      t.string :race
      t.string :background
      t.string :alignment
      t.string :player_name
      t.string :experience_points
      t.integer :speed
      t.integer :max_hit_points
      t.integer :type_hit_dice
      t.string :languages
      t.string :inventory

      t.timestamps
    end
  end
end

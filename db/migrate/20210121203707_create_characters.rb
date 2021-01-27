class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.integer :strength
      t.integer :craft
      t.integer :fate
      t.integer :gold
      t.integer :life
      t.string :starting_with_spell
      t.timestamps
    end
  end
end

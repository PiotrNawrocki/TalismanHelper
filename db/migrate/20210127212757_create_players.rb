class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.references :characters
      t.integer :strength
      t.integer :craft
      t.integer :fate
      t.integer :gold
      t.integer :life
      t.references :games
      t.timestamps
    end
  end
end

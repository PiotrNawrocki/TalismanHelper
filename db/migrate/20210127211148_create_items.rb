class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :strength
      t.integer :craft
      t.integer :quantity
      t.boolean :weapon
      t.boolean :magic
      t.boolean :only_in_battle
      t.string :nature
      t.timestamps
    end
  end
end

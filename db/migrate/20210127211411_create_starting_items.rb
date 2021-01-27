class CreateStartingItems < ActiveRecord::Migration[6.1]
  def change
    create_table :starting_items do |t|
      t.references :characters
      t.references :items
      t.timestamps
    end
  end
end

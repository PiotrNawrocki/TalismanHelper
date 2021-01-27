class CreateGameItems < ActiveRecord::Migration[6.1]
  def change
    create_table :game_items do |t|
      t.references :items
      t.string :used_times
      t.references :games
      t.timestamps
    end
  end
end

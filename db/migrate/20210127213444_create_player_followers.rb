class CreatePlayerFollowers < ActiveRecord::Migration[6.1]
  def change
    create_table :player_followers do |t|
      t.references :players
      t.references :game_items
      t.timestamps
    end
  end
end

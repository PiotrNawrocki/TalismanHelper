class CreatePlayerItems < ActiveRecord::Migration[6.1]
  def change
    create_table :player_items do |t|
      t.references :players
      t.references :game_followers
      t.timestamps
    end
  end
end

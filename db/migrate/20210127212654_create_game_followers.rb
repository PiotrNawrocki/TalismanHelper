class CreateGameFollowers < ActiveRecord::Migration[6.1]
  def change
    create_table :game_followers do |t|
      t.references :followers
      t.string :used_times
      t.references :games
      t.timestamps
    end
  end
end

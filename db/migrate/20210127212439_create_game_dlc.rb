class CreateGameDlc < ActiveRecord::Migration[6.1]
  def change
    create_table :game_dlcs do |t|
      t.references :dlcs
      t.references :games
      t.timestamps
    end
  end
end

class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      # Player > Character > assigned spells, assigned items, assigned strength/craft/fate/gold/life
      t.string :state, default:'new'
      t.timestamps
    end
  end
end

class ChangeDefaultValueForCreateGamesState < ActiveRecord::Migration[6.1]
  def change
    change_column_default :games, :state, "in_progress"
  end
end

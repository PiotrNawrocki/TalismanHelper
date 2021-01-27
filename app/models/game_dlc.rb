class GameDlc < ApplicationRecord
  belongs_to :dlc
  belongs_to :game
end
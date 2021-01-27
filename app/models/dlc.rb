class Dlc < ApplicationRecord
  has_many :game_dlcs
  has_many :games, through: :game_dlcs
  has_many :followers
end

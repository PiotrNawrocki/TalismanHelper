class Follower < ApplicationRecord
  has_one :dlc
  has_many :game_followers
  has_many :games, through: :game_followers
end
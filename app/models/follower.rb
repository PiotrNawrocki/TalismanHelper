class Follower < ApplicationRecord
  belongs_to :dlc
  has_many :game_followers
  has_many :games, through: :game_followers
end
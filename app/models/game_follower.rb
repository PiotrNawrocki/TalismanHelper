class GameFollower < ApplicationRecord
  belongs_to :follower
  belongs_to :game
  has_many :player_followers
  has_many :players, through: :player_followers
end
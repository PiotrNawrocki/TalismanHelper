class Player < ApplicationRecord
  belongs_to :character
  belongs_to :game
  has_many :player_followers
  has_many :game_followers, through: :player_followers
  has_many :player_items
  has_many :game_items, through: :player_items
end
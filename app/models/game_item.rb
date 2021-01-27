class GameItem < ApplicationRecord
  belongs_to :item
  belongs_to :game
  has_many :player_items
  has_many :players, through: :player_items
end
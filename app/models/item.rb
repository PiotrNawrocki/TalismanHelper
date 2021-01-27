class Item < ApplicationRecord
  has_many :starting_items
  has_many :characters, through: :starting_items
  has_many :game_items
  has_many :games, through: :game_items
end
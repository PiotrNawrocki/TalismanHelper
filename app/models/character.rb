class Character < ApplicationRecord
  has_many :character_abilities
  has_many :abilities, through: :character_abilities
  has_many :starting_items
  has_many :items, through: :starting_items
  has_many :players
end

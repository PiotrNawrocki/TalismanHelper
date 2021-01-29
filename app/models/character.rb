class Character < ApplicationRecord
  enum starting_with_spell: { one_spell: 'one_spell', two_spells: "two_spells" }
  has_many :character_abilities
  has_many :abilities, through: :character_abilities
  has_many :starting_items
  has_many :items, through: :starting_items
  has_many :players
  validates :strength, :craft, :fate, :gold, :life, numericality: { greater_than: 0 }
  validates :name, uniqueness: true
end

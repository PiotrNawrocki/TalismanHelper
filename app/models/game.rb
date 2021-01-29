class Game < ApplicationRecord
  enum state: { in_progress: 'in_progress', paused: 'paused', ended: 'ended' }
  has_many :game_items
  has_many :items, through: :game_items
  has_many :game_dlcs
  has_many :dlcs, through: :game_dlcs
  has_many :game_followers
  has_many :followers, through: :game_followers
  has_many :players
end
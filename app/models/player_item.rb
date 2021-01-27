class PlayerItem < ApplicationRecord
  belongs_to :player
  belongs_to :game_item
end
class Game < ApplicationRecord
  belongs_to :user
  belongs_to :puzzle
  belongs_to :size
  has_many :locations
  has_many :pieces, through: :game_pieces
end

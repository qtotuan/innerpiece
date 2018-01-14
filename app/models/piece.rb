class Piece < ApplicationRecord
  belongs_to :puzzle
  belongs_to :size
  has_many :locations
  has_many :games, through: :locations
end

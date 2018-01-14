class Piece < ApplicationRecord
  belongs_to :puzzle
  has_many :locations
  has_many :games, through: :locations
end

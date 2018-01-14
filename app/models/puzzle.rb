class Puzzle < ApplicationRecord
  has_many :games
  has_many :pieces
  belongs_to :category
end

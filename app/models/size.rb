class Size < ApplicationRecord
  has_many :games
  has_many :pieces
end

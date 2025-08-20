class Review < ApplicationRecord
  belongs_to :restaurant

  RATING =%[0 1 2 3 4 5]
  #validations
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: 0..5 }
  validates :rating, numericality: { only_integer: true }
end

class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]

  #validations
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORY}
end

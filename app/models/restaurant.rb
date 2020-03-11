class Restaurant < ApplicationRecord
  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy

  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :phone_number, uniqueness: true, presence: true
  validates :category, presence: true, inclusion: {in: CATEGORIES}
  # validates :stars, inclusion: { in: [1, 2, 3, 4, 5] }
end

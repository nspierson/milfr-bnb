class Review < ApplicationRecord
  belongs_to :user
  belongs_to :mother

  validates :rating, inclusion: { in: 1..5 }
  validates :description, presence: true
end

class Mother < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many_attached :photos
  validates :name, presence: true, uniqueness: true
  validates :age, :hobbies, :location, presence: true
end

class Mother < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, presence: true, uniqueness: true
  validates :age, :hobbies, :location, presence: true
end

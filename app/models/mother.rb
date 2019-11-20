class Mother < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews
  has_many_attached :photos
  validates :name, presence: true, uniqueness: true
  validates :age, :hobbies, :location, presence: true
  # validates :photos, attached: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end

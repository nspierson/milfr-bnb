class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :reviews
  has_many :mothers, through: :bookings
  has_one_attached :avatar
  validates :name, :email, presence: true, uniqueness: true
  validates :avatar, attached: true
end

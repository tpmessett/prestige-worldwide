class User < ApplicationRecord
  # Include default devise modules. Others available are:
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :yachts
  has_many :incoming_bookings, through: :yachts, source: :bookings
  has_one_attached :photo
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
end

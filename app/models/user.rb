class User < ApplicationRecord
  # Include default devise modules. Others available are:
  has_many :bookings
  has_many :yachts
  has_many :incoming_bookings, through: :yachts, source: :bookings
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

class Yacht < ApplicationRecord
  has_one_attached :photo
  has_many :bookings
  belongs_to :user
  validates :yacht_name, presence: true
  validates :cost_per_night, presence: true
  validates :yacht_location, presence: true
end

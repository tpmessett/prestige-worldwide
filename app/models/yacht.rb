class Yacht < ApplicationRecord
  has_many_attached :photos
  has_many :bookings
  belongs_to :user
  validates :yacht_name, presence: true
  validates :cost_per_night, presence: true
  validates :yacht_location, presence: true
end

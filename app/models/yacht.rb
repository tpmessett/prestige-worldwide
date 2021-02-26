class Yacht < ApplicationRecord
  has_one_attached :photo
  has_many :bookings
  belongs_to :user
  validates :yacht_name, presence: true
  validates :cost_per_night, presence: true
  validates :yacht_location, presence: true
  validates :Address, presence: true
  geocoded_by :Address
  after_validation :geocode, if: :will_save_change_to_Address?
  include PgSearch::Model
  pg_search_scope :search_yacht,
    against: [ :yacht_location, :Address, :description ],
    using: {
      tsearch: { prefix: true }
    }
end

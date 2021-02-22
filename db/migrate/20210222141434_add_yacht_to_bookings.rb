class AddYachtToBookings < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :yacht, null: false, foreign_key: true
  end
end

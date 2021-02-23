class AddUserToYachts < ActiveRecord::Migration[6.0]
  def change
    add_reference :yachts, :user, foreign_key: true
  end
end

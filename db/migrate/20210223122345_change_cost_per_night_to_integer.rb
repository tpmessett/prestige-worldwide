class ChangeCostPerNightToInteger < ActiveRecord::Migration[6.0]
  def change
    change_column :yachts, :cost_per_night, :integer
  end
end

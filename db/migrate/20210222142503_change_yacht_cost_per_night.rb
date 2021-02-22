class ChangeYachtCostPerNight < ActiveRecord::Migration[6.0]
  def change
    change_column :yachts, :cost_per_night, 'numeric USING CAST(cost_per_night AS numeric)'

  end
end

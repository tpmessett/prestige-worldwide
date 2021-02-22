class CreateYachts < ActiveRecord::Migration[6.0]
  def change
    create_table :yachts do |t|
      t.string :yacht_name
      t.string :cost_per_night
      t.string :yacht_location
      t.text :description

      t.timestamps
    end
  end
end

class AddAddressToYachts < ActiveRecord::Migration[6.0]
  def change
    add_column :yachts, :Address, :string
  end
end

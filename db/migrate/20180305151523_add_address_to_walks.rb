class AddAddressToWalks < ActiveRecord::Migration[5.1]
  def change
    add_column :walks, :address, :string
  end
end

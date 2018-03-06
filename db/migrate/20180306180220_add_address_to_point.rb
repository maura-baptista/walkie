class AddAddressToPoint < ActiveRecord::Migration[5.1]
  def change
    add_column :points, :address, :string
  end
end

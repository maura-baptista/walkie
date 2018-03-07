class RemoveAddressFromPointsOfInterest < ActiveRecord::Migration[5.1]
  def change
    remove_column :points_of_interest, :address, :string
  end
end

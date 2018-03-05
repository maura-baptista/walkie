class AddWalkToPointsOfInterest < ActiveRecord::Migration[5.1]
  def change
    add_reference :points_of_interest, :walk, foreign_key: true
  end
end

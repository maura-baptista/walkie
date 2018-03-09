class ChangeDurationToBeIntegerInWalks < ActiveRecord::Migration[5.1]
  def change
    change_column :walks, :duration, :integer
  end
end

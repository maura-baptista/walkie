class RenameOldTableToNewTable < ActiveRecord::Migration[5.1]
  def change
    rename_table :points_of_interest, :points
  end
end

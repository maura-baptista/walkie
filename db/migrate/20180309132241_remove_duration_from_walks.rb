class RemoveDurationFromWalks < ActiveRecord::Migration[5.1]
  def change
    remove_column :walks, :duration, :string
  end
end

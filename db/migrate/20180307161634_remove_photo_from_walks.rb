class RemovePhotoFromWalks < ActiveRecord::Migration[5.1]
  def change
    remove_column :walks, :photo, :string
  end
end

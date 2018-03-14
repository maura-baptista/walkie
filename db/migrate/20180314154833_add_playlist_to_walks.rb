class AddPlaylistToWalks < ActiveRecord::Migration[5.1]
  def change
    add_column :walks, :playlist, :string
  end
end

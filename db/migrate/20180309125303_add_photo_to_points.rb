class AddPhotoToPoints < ActiveRecord::Migration[5.1]
  def change
    add_column :points, :photo, :string
  end
end

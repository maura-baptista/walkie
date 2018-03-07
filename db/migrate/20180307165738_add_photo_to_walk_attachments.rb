class AddPhotoToWalkAttachments < ActiveRecord::Migration[5.1]
  def change
    add_column :walk_attachments, :photo, :string
  end
end

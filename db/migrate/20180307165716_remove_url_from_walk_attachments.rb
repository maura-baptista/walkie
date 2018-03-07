class RemoveUrlFromWalkAttachments < ActiveRecord::Migration[5.1]
  def change
    remove_column :walk_attachments, :url, :string
  end
end

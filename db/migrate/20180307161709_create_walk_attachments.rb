class CreateWalkAttachments < ActiveRecord::Migration[5.1]
  def change
    create_table :walk_attachments do |t|
      t.references :walk, foreign_key: true
      t.string :url

      t.timestamps
    end
  end
end

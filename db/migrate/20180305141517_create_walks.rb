class CreateWalks < ActiveRecord::Migration[5.1]
  def change
    create_table :walks do |t|
      t.string :name
      t.string :category
      t.string :location
      t.string :duration
      t.string :description
      t.string :photo
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

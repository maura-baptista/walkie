class CreatePointOfInterests < ActiveRecord::Migration[5.1]
  def change
    create_table :points_of_interest do |t|
      t.string :name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.text :description
      t.integer :order

      t.timestamps
    end
  end
end

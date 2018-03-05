class CreateUserWalks < ActiveRecord::Migration[5.1]
  def change
    create_table :user_walks do |t|
      t.references :user, foreign_key: true
      t.references :walk, foreign_key: true

      t.timestamps
    end
  end
end

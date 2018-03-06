class AddCategoriesReferencesToWalks < ActiveRecord::Migration[5.1]
  def change
    add_reference :walks, :category, foreign_key: true
  end
end

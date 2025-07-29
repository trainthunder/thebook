class AddUniqueIndexToBookCategories < ActiveRecord::Migration[8.0]
  def change
    add_index :book_categories, [ :book_id, :category_id ], unique: true
  end
end

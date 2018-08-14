class AddSubcategoriesToCategories < ActiveRecord::Migration[5.2]
  def change
    add_reference :ar_subcategories, :ar_category, foreign_key: true
  end
end

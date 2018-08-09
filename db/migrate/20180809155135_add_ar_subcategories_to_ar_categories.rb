class AddArSubcategoriesToArCategories < ActiveRecord::Migration[5.2]
  def change
    add_reference :ar_subcategories, :ar_categories, foreign_key: true
  end
end

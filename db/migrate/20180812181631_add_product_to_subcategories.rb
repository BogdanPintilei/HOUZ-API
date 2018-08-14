class AddProductToSubcategories < ActiveRecord::Migration[5.2]
  def change
    add_reference :ar_products, :ar_subcategory, foreign_key: true
  end
end

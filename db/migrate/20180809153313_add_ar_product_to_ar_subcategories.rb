class AddArProductToArSubcategories < ActiveRecord::Migration[5.2]
  def change
    add_reference :ar_products, :ar_subcategories, foreign_key: true
  end
end

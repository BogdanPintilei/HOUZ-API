class CreateArSubcategories < ActiveRecord::Migration[5.2]
  def change
    create_table :ar_subcategories do |t|
      t.string :ar_subcategory_name
      t.string :image_url

      t.timestamps
    end
  end
end

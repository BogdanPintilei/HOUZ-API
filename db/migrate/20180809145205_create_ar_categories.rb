class CreateArCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :ar_categories do |t|
      t.string :ar_category_name
      t.string :image_url

      t.timestamps
    end
  end
end

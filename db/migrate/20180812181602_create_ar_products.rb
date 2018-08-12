class CreateArProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :ar_products do |t|
      t.string :product_name
      t.string :product_description
      t.string :image_url

      t.timestamps
    end
  end
end

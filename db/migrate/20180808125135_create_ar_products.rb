class CreateArProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :ar_products do |t|
      t.string :product_name
      t.string :product_description
      t.string :product_url
      t.string :product_serialized_url

      t.timestamps
    end
  end
end

class AddColumnToFeedItemsItemType < ActiveRecord::Migration[5.2]
  def change
    add_column :feed_items, :item_type, :string
  end
end

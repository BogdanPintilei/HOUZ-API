class DeleteColumnTypeFromFeedItems < ActiveRecord::Migration[5.2]
  def change
      remove_column :feed_items, :type, :string
  end
end

class AddUserToFeedItems < ActiveRecord::Migration[5.2]
  def change
      add_reference :feed_items, :user, foreign_key: true
  end
end

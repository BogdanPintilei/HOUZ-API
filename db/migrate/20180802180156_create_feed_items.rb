class CreateFeedItems < ActiveRecord::Migration[5.2]
  def change
    create_table :feed_items do |t|
      t.string :type
      t.string :username
      t.string :item_description
      t.string :image_url
      t.string :video_url

      t.timestamps
    end
  end
end

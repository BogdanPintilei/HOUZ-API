json.extract! feed_item, :id, :type, :username, :user_id, :item_description, :image_url, :video_url, :created_at, :updated_at
json.url feed_item_url(feed_item, format: :json)

class User < ApplicationRecord
  has_many :feed_items
  mount_uploader :image_url, AvatarUploader
end

class ArProductSerializer < ActiveModel::Serializer
  attributes :id, :item_description, :image_url, :video_url, :user_id, :item_type
end
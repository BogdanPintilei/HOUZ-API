class FeedItemSerializer < ActiveModel::Serializer
  attributes :id, :product_description, :product_url, :product_serialized_url
end
class ArProductSerializer < ActiveModel::Serializer
  attributes :id, :product_name, :product_description, :image_url
end

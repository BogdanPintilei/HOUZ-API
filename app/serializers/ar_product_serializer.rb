class ArProductSerializer < ActiveModel::Serializer
  attributes :id, :product_description, :product_url, :product_serialized_url, :ar_subcategories_id
end
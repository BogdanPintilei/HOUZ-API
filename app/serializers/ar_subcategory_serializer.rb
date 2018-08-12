class ArSubcategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :category_id
end

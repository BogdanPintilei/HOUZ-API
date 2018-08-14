class ArSubcategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :ar_category_id
end

class ArSubcategorySerializer < ActiveModel::Serializer
  attributes :id, :ar_subcategory_name, :image_url, :ar_categories_id
end

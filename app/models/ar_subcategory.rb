class ArSubcategory < ApplicationRecord
  belongs_to :ar_category
  has_many :ar_products
end

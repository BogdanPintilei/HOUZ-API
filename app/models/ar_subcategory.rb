class ArSubcategory < ApplicationRecord
  has_many :ar_products
  belongs_to :ar_category
end

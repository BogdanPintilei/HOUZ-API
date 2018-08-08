json.extract! ar_product, :id, :product_name, :product_description, :product_url, :product_serialized_url, :created_at, :updated_at
json.url ar_product_url(ar_product, format: :json)

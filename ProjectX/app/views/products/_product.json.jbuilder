json.extract! product, :id, :name, :url, :created_at, :updated_at
json.url product_url(product, format: :json)

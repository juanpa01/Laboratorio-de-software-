json.extract! product, :id, :nombre, :descripcion, :marca, :categoria, :cantidad, :precio, :created_at, :updated_at
json.url product_url(product, format: :json)

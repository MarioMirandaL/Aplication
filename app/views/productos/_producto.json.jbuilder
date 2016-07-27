json.extract! producto, :id, :name, :cantidad, :precio, :descripcion, :created_at, :updated_at
json.url producto_url(producto, format: :json)
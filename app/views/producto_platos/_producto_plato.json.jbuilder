json.extract! producto_plato, :id, :producto_id, :plato_id, :created_at, :updated_at
json.url producto_plato_url(producto_plato, format: :json)
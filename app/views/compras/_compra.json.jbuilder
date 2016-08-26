json.extract! compra, :id, :producto_id, :distribuidor_id, :fecha_compra, :fecha_entrega, :created_at, :updated_at
json.url compra_url(compra, format: :json)
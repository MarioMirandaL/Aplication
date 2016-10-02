json.extract! pedido, :id, :rut, :mesa, :fecha, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
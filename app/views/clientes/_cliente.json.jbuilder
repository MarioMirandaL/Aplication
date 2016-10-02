json.extract! cliente, :id, :nombre, :telefono, :fechanac, :observaciones, :rut, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
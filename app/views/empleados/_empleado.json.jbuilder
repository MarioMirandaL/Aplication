json.extract! empleado, :id, :name, :age, :rut, :created_at, :updated_at
json.url empleado_url(empleado, format: :json)
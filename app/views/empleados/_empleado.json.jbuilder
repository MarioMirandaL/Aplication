json.extract! empleado, :id, :name, :age, :rut, :sueldo, :email, :telefono, :cargo, :created_at, :updated_at
json.url empleado_url(empleado, format: :json)
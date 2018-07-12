json.extract! user, :id, :nambre, :nombre_usuario, :password, :correo, :telefono, :id_rol, :id_ciudad, :created_at, :updated_at
json.url user_url(user, format: :json)

json.array!(@comentarios) do |comentario|
  json.extract! comentario, :id, :texto, :estado, :usuario_id, :hilo_id
  json.url comentario_url(comentario, format: :json)
end

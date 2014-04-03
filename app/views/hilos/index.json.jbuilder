json.array!(@hilos) do |hilo|
  json.extract! hilo, :id, :texto, :usuario_id, :estado
  json.url hilo_url(hilo, format: :json)
end

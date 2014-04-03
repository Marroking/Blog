json.array!(@alumnos) do |alumno|
  json.extract! alumno, :id, :nombre, :pa, :num_control
  json.url alumno_url(alumno, format: :json)
end

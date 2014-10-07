json.array!(@old_systems) do |old_system|
  json.extract! old_system, :id, :username, :version
  json.url old_system_url(old_system, format: :json)
end

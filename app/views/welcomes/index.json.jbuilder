json.array!(@welcomes) do |welcome|
  json.extract! welcome, :index, :name, :context
  json.url welcome_url(welcome, format: :json)
end

json.array!(@spaces) do |space|
  json.extract! space, :id, :name, :address, :city, :state, :zip, :description, :price, :hours, :user
  json.url space_url(space, format: :json)
end

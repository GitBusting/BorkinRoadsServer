json.extract! route, :id, :title, :path, :rating, :date, :estimatedDuration, :nearWater, :nearPark, :favourite, :numberOfTimesUsed, :created_at, :updated_at
json.url route_url(route, format: :json)

json.extract! route, :id, :user_id, :title, :path, :rating, :date, :estimatedDuration, :nearWater, :nearPark, :favourite, :numberOfTimesUsed, :route_details, :created_at, :updated_at
json.url route_url(route, format: :json)

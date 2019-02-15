json.extract! route_detail, :id, :maxPace, :avgPace, :movingPace, :maxSpeed, :avgSpeed, :movingSpeed, :routeLength, :totalTime, :movingTime, :date, :created_at, :updated_at
json.url route_detail_url(route_detail, format: :json)

json.extract! public_route_record, :id, :userID, :petID, :route, :location, :created_at, :updated_at
json.url public_route_record_url(public_route_record, format: :json)

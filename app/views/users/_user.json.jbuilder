json.extract! user, :id, :name, :email, :password_digest, :routes, :pets, :friend_ids, :created_at, :updated_at
json.url user_url(user, format: :json)

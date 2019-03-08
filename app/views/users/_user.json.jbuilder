json.extract! user, :id, :name, :email, :password_digest, :created_at, :updated_at
json.url pet_url(user, format: :json)

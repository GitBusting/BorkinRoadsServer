json.extract! pet, :id, :user_id, :name, :breed, :sex, :birthDate, :lastWalkDate, :lastBathDate, :lastVetDate, :created_at, :updated_at
json.url pet_url(pet, format: :json)

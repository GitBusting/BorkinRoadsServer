json.extract! pet, :id, :name, :breed, :sex, :birthDate, :lastWalDate, :lastBathDate, :lastVetDate, :created_at, :updated_at
json.url pet_url(pet, format: :json)

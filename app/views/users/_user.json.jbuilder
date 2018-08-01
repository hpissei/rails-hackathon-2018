json.extract! user, :id, :Email, :Password, :Attempts, :created_at, :updated_at
json.url user_url(user, format: :json)

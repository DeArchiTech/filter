json.array!(@users) do |user|
  json.extract! user, :id, :id, :username, :email, :pwd, :attribute
  json.url user_url(user, format: :json)
end

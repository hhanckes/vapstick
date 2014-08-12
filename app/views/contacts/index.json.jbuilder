json.array!(@contacts) do |contact|
  json.extract! contact, :id, :email, :name, :content
  json.url contact_url(contact, format: :json)
end

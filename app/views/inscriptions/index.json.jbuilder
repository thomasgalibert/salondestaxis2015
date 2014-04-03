json.array!(@inscriptions) do |inscription|
  json.extract! inscription, :id, :name, :firstname, :email, :profession, :street, :zipcode, :town
  json.url inscription_url(inscription, format: :json)
end

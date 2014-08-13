json.array!(@shipping_areas) do |shipping_area|
  json.extract! shipping_area, :id, :name, :cost
  json.url shipping_area_url(shipping_area, format: :json)
end

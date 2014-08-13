json.array!(@orders) do |order|
  json.extract! order, :id, :name, :phone_number, :address, :shipping_area_id
  json.url order_url(order, format: :json)
end

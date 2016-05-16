json.array!(@entregas) do |entrega|
  json.extract! entrega, :id, :data, :situacao, :Pedido_id
  json.url entrega_url(entrega, format: :json)
end

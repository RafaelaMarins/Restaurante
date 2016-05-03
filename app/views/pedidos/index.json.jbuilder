json.array!(@pedidos) do |pedido|
  json.extract! pedido, :id, :pedido, :data, :situacao, :Cliente
  json.url pedido_url(pedido, format: :json)
end

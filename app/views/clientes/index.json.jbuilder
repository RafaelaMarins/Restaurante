json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nome, :cpf, :endereco, :numero, :cidade, :estado, :email
  json.url cliente_url(cliente, format: :json)
end

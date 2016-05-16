json.cardapio(@cardapios) do |cardapio|
  json.extract! cardapio, :id, :nome, :descricao, :preco
  json.url cardapio_url(cardapio, format: :json)
end

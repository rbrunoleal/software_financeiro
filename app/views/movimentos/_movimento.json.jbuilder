json.extract! movimento, :id, :data_competencia, :data_vencimento, :descricao, :pessoa_id, :conta_id, :nota_id, :valor, :pessoa, :conta, :nota, :favorecido, :contabancaria, :informacaonota
json.url movimento_url(movimento, format: :json)

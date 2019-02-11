json.extract! pessoa, :id, :tipo, :pessoafisica_id, :pessoajuridica_id, :endereco_id, :pessoafisica, :pessoajuridica, :endereco, :nome, :identificador, :contatos
json.url pessoa_url(pessoa, format: :json)

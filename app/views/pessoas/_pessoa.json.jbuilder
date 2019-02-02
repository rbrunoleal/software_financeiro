json.extract! pessoa, :id, :tipo, :pessoafisica_id, :pessoajuridica_id, :endereco_id, :created_at, :updated_at
json.url pessoa_url(pessoa, format: :json)

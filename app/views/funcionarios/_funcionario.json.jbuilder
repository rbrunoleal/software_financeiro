json.extract! funcionario, :id, :cargo_id, :pessoafisica_id, :endereco_id, :ativo, :created_at, :updated_at
json.url funcionario_url(funcionario, format: :json)

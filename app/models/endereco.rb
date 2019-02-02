class Endereco < ApplicationRecord
  belongs_to :unidade
  belongs_to :estado
  belongs_to :cidade
  enum logadouro: [
    :Avenida,
	  :Rua,
	  :Travessa,
	  :Alameda,
    :Condomínio,
    :Conjunto,
    :Estrada,
    :Largo,
    :Loteamento,
    :Quadra,
    :Ladeira,
    :Chácara,
    :Colônia,
    :Distrito,
    :Fazenda,
    :Parque,
    :Passarela,
    :Pátio,
    :Praia,
    :Recanto,
    :Rodovia,
    :Sítio,
    :Trevo,
    :Vale,
    :Viela,
    :Vila
  ]
  validates :numero, presence: true
  validates :complemento, presence: true
  validates :cep, presence: true
  validates :bairro, presence: true
  validates :descricao, presence: true
end

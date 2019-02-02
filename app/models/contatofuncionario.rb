class Contatofuncionario < ApplicationRecord
  belongs_to :funcionario, :inverse_of => :contatofuncionarios
  enum tipo: [
    :Email,
	  :Telefone,
	  :Celular]
	validates :campo, presence: true
end

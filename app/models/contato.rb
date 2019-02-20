class Contato < ApplicationRecord
  belongs_to :pessoa, :inverse_of => :contatos
  enum tipo: [
    :Email,
	  :Telefone,
	  :Celular]
	validates :campo, presence: true
	validates :tipo, presence: true
end

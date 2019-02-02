class Contatoempresa < ApplicationRecord
  belongs_to :empresa, :inverse_of => :contatoempresas
  enum tipo: [
    :Email,
	  :Telefone,
	  :Celular]
	validates :campo, presence: true
end

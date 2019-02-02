class Conta < ApplicationRecord
  belongs_to :banco
  has_many :movimentos
  
  def saldo
    movimentos.sum(&:valor)
  end
end

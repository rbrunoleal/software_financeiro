class Conta < ApplicationRecord
  belongs_to :banco
  has_many :movimentos
  
  validates :conta_digito, numericality: { less_than_or_equal_to: 9,  only_integer: true }
  validates :agencia_digito, numericality: { less_than_or_equal_to: 9,  only_integer: true }
  
  def saldo
    movimentos.sum(&:valor)
  end
  
  def conta
    self.conta_numero + "-" + self.conta_digito.to_s
  end
  
  def agencia
    self.agencia_numero + "-" + self.agencia_digito.to_s  
  end
end

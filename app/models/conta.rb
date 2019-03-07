class Conta < ApplicationRecord
  belongs_to :banco
  has_many :movimentos
  
  validates :conta_numero, numericality: true, presence: true
  validates :agencia_numero, numericality: true, presence: true
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

  scope :conta_numero, -> (conta_numero) { where("conta_numero like ?", "%#{conta_numero}%")}
  scope :conta_descricao, -> (conta_descricao) { where("descricao like ?", "%#{conta_descricao}%")}
  scope :agencia_numero, -> (agencia_numero) { where("agencia_numero like ?", "%#{agencia_numero}%")}
  scope :banco_id, -> (bancoId) { where("banco_id = ?", "#{bancoId}")}
end

class Endereco < ApplicationRecord
  belongs_to :cidade
  validates :numero, numericality: true, presence: true
  validates :complemento, presence: true
  validates :cep, numericality: true, presence: true
  validates :bairro, presence: true
  validates :descricao, presence: true
  
  def to_s 
    self.descricao + ', ' + self.numero.to_s + ', ' + self.cidade.to_s;
  end
end

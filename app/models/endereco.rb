class Endereco < ApplicationRecord
  belongs_to :unidade
  belongs_to :estado
  belongs_to :cidade
  validates :numero, presence: true
  validates :complemento, presence: true
  validates :cep, presence: true
  validates :bairro, presence: true
  validates :descricao, presence: true
  
  def to_s 
    self.descricao + ', ' + self.numero.to_s + ', ' + self.cidade.to_s;
  end
end

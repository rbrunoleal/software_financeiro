class Banco < ApplicationRecord
  has_many :contas, :dependent => :delete_all
  
  validates :codigo, numericality: true, presence: true
  validates :descricao, presence: true
  
  def busca(id)
    Banco.find(id)
  end
  
  scope :codigo, -> (codigo) { where("codigo like ?", "%#{codigo}%")}
  scope :descricao, -> (descricao) { where("descricao like ?", "%#{descricao}%")}
end

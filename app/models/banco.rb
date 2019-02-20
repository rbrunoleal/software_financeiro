class Banco < ApplicationRecord
  has_many :contas, :dependent => :delete_all
  
  validates :codigo, numericality: true, presence: true
  validates :descricao, presence: true
  
  mount_uploader :foto, FotoUploader
  
  def busca(id)
    Banco.find(id)
  end
end

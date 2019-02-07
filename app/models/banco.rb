class Banco < ApplicationRecord
  validates :codigo, presence: true
  validates :descricao, presence: true
  
  mount_uploader :foto, FotoUploader
  
  def busca(id)
    Banco.find(id)
  end
end

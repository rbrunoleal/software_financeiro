class Banco < ApplicationRecord
  validates :codigo, presence: true
  validates :descricao, presence: true
  
  mount_uploader :foto, FotoUploader
end

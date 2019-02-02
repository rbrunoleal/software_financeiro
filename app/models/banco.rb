class Banco < ApplicationRecord
  validates :codigo, presence: true
  validates :descricao, presence: true
end

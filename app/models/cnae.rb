class Cnae < ApplicationRecord
  validates :codigo, presence: true
  validates :descricao, presence: true
end

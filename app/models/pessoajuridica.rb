class Pessoajuridica < ApplicationRecord
  validates :razaosocial, presence: true
  validates :cnpj, presence: true
  validates :nomefantasia, presence: true
end

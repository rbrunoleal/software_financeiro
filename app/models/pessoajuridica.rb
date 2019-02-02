class Pessoajuridica < ApplicationRecord
  belongs_to :cnae, optional: true
  validates :razaosocial, presence: true
  validates :cnpj, presence: true
  validates :nomefantasia, presence: true
end

class Pessoajuridica < ApplicationRecord
  belongs_to :pessoa, optional: true,  dependent: :destroy
  validates :razaosocial, presence: true
  validates :cnpj, presence: true
  validates :nomefantasia, presence: true
end

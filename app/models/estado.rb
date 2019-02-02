class Estado < ApplicationRecord
  belongs_to :unidade
  validates :nome, presence: true
  validates :sigla, presence: true
end

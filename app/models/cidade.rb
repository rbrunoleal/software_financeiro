class Cidade < ApplicationRecord
  belongs_to :estado
  validates :nome, presence: true
end

class Funcionario < ApplicationRecord
  belongs_to :cargo
  belongs_to :pessoafisica
  belongs_to :endereco
  accepts_nested_attributes_for :endereco, reject_if: :all_blank, allow_destroy: true
  has_many :contatofuncionarios, :inverse_of => :funcionario
  accepts_nested_attributes_for :contatofuncionarios, :allow_destroy => true
end

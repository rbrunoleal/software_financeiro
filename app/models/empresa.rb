class Empresa < ApplicationRecord
  belongs_to :pessoajuridica
  belongs_to :endereco
  accepts_nested_attributes_for :endereco, reject_if: :all_blank, allow_destroy: true
  has_many :contatoempresas, :inverse_of => :empresa
  accepts_nested_attributes_for :contatoempresas, :allow_destroy => true
end

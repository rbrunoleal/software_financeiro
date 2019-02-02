class Pessoa < ApplicationRecord
  enum tipo: [:Física, :Jurídica]
  belongs_to :endereco
  accepts_nested_attributes_for :endereco, reject_if: :all_blank, allow_destroy: true
  belongs_to :pessoafisica, optional: true
  belongs_to :pessoajuridica, optional: true
  has_many :contatos, :inverse_of => :pessoa
  accepts_nested_attributes_for :contatos, :allow_destroy => true
  
  validates :pessoajuridica, absence: true, if: :verificatipo_fisica?
  def verificatipo_fisica?
    tipo == "Física"
  end
  
  validates :pessoafisica, absence: true, if: :verificatipo_juridica?
  def verificatipo_juridica?
    tipo == "Jurídica"
  end
end

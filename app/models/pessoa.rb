class Pessoa < ApplicationRecord
  enum tipo: [:Física, :Jurídica]
  belongs_to :endereco, optional: true,  dependent: :destroy
  accepts_nested_attributes_for :endereco, reject_if: :all_blank, allow_destroy: true
  belongs_to :pessoafisica, optional: true, dependent: :destroy
  accepts_nested_attributes_for :pessoafisica, reject_if: :all_blank, allow_destroy: true
  belongs_to :pessoajuridica, optional: true, dependent: :destroy
  accepts_nested_attributes_for :pessoajuridica, reject_if: :all_blank, allow_destroy: true
  has_many :contatos, :inverse_of => :pessoa, dependent: :delete_all
  accepts_nested_attributes_for :contatos, :allow_destroy => true
  
  validates :pessoajuridica, absence: true, if: :verificatipo_fisica?
  def verificatipo_fisica?
    tipo == "Física"
  end
  
  validates :pessoafisica, absence: true, if: :verifica_tipo_juridica?
  def verifica_tipo_juridica?
    tipo == "Jurídica"
  end
  
  def identificador
    if self.tipo == 'Física'
      return CPF.new(self.pessoafisica.cpf).formatted;
    end
    CNPJ.new(self.pessoajuridica.cnpj).formatted
  end
  
  def nome
    if self.tipo == 'Física'
      return self.pessoafisica.nome;
    end
    self.pessoajuridica.razaosocial
  end
  
end

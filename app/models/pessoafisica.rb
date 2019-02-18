class Pessoafisica < ApplicationRecord
  belongs_to :pessoa, optional: true,  dependent: :destroy
  enum sexo: [:Masculino, :Feminino]
  validates :cpf, presence: true
  validates :rg, presence: true
  validates :nome, presence: true
  validates :data_nascimento, presence: true
  def cpf_formatado
    CPF.new(self.cpf).formatted;
  end
end

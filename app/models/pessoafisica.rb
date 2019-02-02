class Pessoafisica < ApplicationRecord
  enum sexo: [:Masculino, :Feminino]
  validates :cpf, presence: true
  validates :rg, presence: true
  validates :nome, presence: true
  validates :datanascimento, presence: true
end

class Pessoafisica < ApplicationRecord
  enum sexo: [:Masculino, :Feminino]
  validates :cpf, presence: true
  validates :rg, presence: true
  validates :nome, presence: true
  validates :data_nascimento, presence: true
end

class Cidade < ApplicationRecord
   belongs_to :estado
  validates :nome, presence: true
  def to_s
     self.nome + ' - ' + self.estado.nome;
  end
end

class Movimento < ApplicationRecord
    belongs_to :conta
    belongs_to :pessoa
    belongs_to :nota, optional: true
    
    def favorecido
      self.pessoa.nome
    end
    
    def contabancaria
      self.conta.conta
    end
end

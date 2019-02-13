class Movimento < ApplicationRecord
    belongs_to :conta
    belongs_to :pessoa
    belongs_to :nota, optional: true
    accepts_nested_attributes_for :nota, reject_if: :all_blank, allow_destroy: true
    
    def favorecido
      self.pessoa.nome
    end
    
    def contabancaria
      self.conta.conta
    end
    
    def informacaonota
      if (!self.nota.nil?)
        self.nota.numero + ' - ' + self.nota.descricao
      end
    end
end

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
    
    scope :valor, -> (valor) { where("valor = ?", "#{valor}")}
    scope :data_competencia, -> (dataCompetenciaInicio) { where("data_competencia >= ?", "#{dataCompetenciaInicio}")}
    scope :data_competencia_final, -> (dataCompetenciaFinal) { where("data_competencia <= ?", "#{dataCompetenciaFinal}")}
    scope :pessoa, -> (pessoa) {
      joins("JOIN pessoas ON pessoas.id = movimentos.pessoa_id")
      .joins("LEFT JOIN pessoafisicas ON pessoas.pessoafisica_id = pessoafisicas.id")
      .joins("LEFT JOIN pessoajuridicas ON pessoas.pessoajuridica_id = pessoajuridicas.id")    
      .where("pessoafisicas.nome like ? or pessoajuridicas.razaosocial like ?",  "%#{pessoa}%", "%#{pessoa}%") 
    }
    scope :receita, -> (receita) { where("valor > 0")}
    scope :despesa, -> (despesa) { where("valor < 0")}
    scope :conta_id, -> (contaId) { where("conta_id = ?", "#{contaId}")}
    scope :descricao, -> (descricao) { where("descricao like ?", "%#{descricao}%")}
end
 
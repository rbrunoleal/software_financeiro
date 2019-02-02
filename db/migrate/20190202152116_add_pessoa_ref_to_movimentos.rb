class AddPessoaRefToMovimentos < ActiveRecord::Migration[5.2]
  def change
    add_reference :movimentos, :pessoa, foreign_key: true
  end
end

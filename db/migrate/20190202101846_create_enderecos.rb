class CreateEnderecos < ActiveRecord::Migration[5.2]
  def change
    create_table :enderecos do |t|
      t.references :unidade, foreign_key: true
      t.references :estado, foreign_key: true
      t.references :cidade, foreign_key: true
      t.string :cep
      t.string :bairro
      t.integer :logadouro
      t.string :descricao
      t.integer :numero
      t.string :complemento

      t.timestamps
    end
  end
end

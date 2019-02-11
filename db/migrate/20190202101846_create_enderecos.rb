class CreateEnderecos < ActiveRecord::Migration[5.2]
  def change
    create_table :enderecos do |t|
      t.references :cidade, foreign_key: true
      t.string :cep
      t.string :bairro
      t.string :descricao
      t.integer :numero
      t.string :complemento

      t.timestamps
    end
  end
end

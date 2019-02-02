class CreatePessoas < ActiveRecord::Migration[5.2]
  def change
    create_table :pessoas do |t|
      t.integer :tipo
      t.references :pessoafisica, foreign_key: true
      t.references :pessoajuridica, foreign_key: true
      t.references :endereco, foreign_key: true

      t.timestamps
    end
  end
end

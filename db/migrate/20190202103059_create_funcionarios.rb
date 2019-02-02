class CreateFuncionarios < ActiveRecord::Migration[5.2]
  def change
    create_table :funcionarios do |t|
      t.references :cargo, foreign_key: true
      t.references :pessoafisica, foreign_key: true
      t.references :endereco, foreign_key: true
      t.boolean :ativo

      t.timestamps
    end
  end
end

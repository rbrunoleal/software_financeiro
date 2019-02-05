class CreatePessoafisicas < ActiveRecord::Migration[5.2]
  def change
    create_table :pessoafisicas do |t|
      t.string :nome
      t.integer :sexo
      t.string :cpf
      t.string :rg
      t.date :data_nascimento

      t.timestamps
    end
  end
end

class CreateEmpresas < ActiveRecord::Migration[5.2]
  def change
    create_table :empresas do |t|
      t.references :pessoajuridica, foreign_key: true
      t.references :endereco, foreign_key: true
      t.boolean :padrao

      t.timestamps
    end
  end
end

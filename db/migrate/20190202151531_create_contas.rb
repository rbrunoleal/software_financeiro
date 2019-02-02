class CreateContas < ActiveRecord::Migration[5.2]
  def change
    create_table :contas do |t|
      t.references :banco, foreign_key: true
      t.string :conta_numero
      t.integer :conta_digito
      t.string :agencia_numero
      t.string :agencia_digito_integer

      t.timestamps
    end
  end
end

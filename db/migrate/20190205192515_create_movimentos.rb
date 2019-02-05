class CreateMovimentos < ActiveRecord::Migration[5.2]
  def change
    create_table :movimentos do |t|
      t.date :data_competencia
      t.string :descricao
      t.decimal :valor, precision: 18, scale: 2
      t.date :data_vencimento
      t.references :conta, foreign_key: true
      t.references :pessoa, foreign_key: true
      t.references :nota, foreign_key: true
      
      t.timestamps
    end
  end
end

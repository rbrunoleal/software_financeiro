class CreateMovimentos < ActiveRecord::Migration[5.2]
  def change
    create_table :movimentos do |t|
      t.datetime :data
      t.string :descricao
      t.decimal :valor, precision: 18, scale: 2

      t.timestamps
    end
  end
end

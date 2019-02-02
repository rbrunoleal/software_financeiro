class CreateCnaes < ActiveRecord::Migration[5.2]
  def change
    create_table :cnaes do |t|
      t.string :descricao
      t.string :codigo

      t.timestamps
    end
  end
end

class CreateCargos < ActiveRecord::Migration[5.2]
  def change
    create_table :cargos do |t|
      t.string :descricao
    end
  end
end

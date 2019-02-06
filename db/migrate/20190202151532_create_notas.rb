class CreateNotas < ActiveRecord::Migration[5.2]
  def change
    create_table :notas do |t|
      t.string :numero
      t.string :codigo
      t.date :data
      t.string :descricao
      
      t.timestamps
    end
  end
end

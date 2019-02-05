class CreateBancos < ActiveRecord::Migration[5.2]
  def change
    create_table :bancos do |t|
      t.string :descricao
      t.string :codigo
      t.string :foto

      t.timestamps
    end
  end
end

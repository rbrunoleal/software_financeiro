class CreateUnidades < ActiveRecord::Migration[5.2]
  def change
    create_table :unidades do |t|
      t.string :nome

      t.timestamps
    end
  end
end

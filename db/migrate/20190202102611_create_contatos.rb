class CreateContatos < ActiveRecord::Migration[5.2]
  def change
    create_table :contatos do |t|
      t.integer :tipo
      t.string :campo
      t.references :pessoa, foreign_key: true

      t.timestamps
    end
  end
end

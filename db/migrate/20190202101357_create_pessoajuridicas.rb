class CreatePessoajuridicas < ActiveRecord::Migration[5.2]
  def change
    create_table :pessoajuridicas do |t|
      t.string :nomefantasia
      t.string :razaosocial
      t.string :cnpj
      t.timestamps
    end
  end
end

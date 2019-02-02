class AddVencimentoToMovimentos < ActiveRecord::Migration[5.2]
  def change
    add_column :movimentos, :data_vencimento, :date
  end
end

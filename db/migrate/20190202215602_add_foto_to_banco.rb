class AddFotoToBanco < ActiveRecord::Migration[5.2]
  def change
    add_column :bancos, :foto, :string
  end
end

class AddContaRefToMovimentos < ActiveRecord::Migration[5.2]
  def change
    add_reference :movimentos, :conta, foreign_key: true
  end
end

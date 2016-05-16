class CreateCardapios < ActiveRecord::Migration
  def change
    create_table :cardapios do |t|
      t.string :nome
      t.string :descricao
      t.float :preco

      t.timestamps null: false
    end
  end
end

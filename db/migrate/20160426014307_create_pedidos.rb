class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.string :pedido
      t.string :data
      t.string :situacao
      t.references :Cliente

      t.timestamps null: false
    end
  end
end

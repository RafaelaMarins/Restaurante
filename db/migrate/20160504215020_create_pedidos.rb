class CreatePedidos < ActiveRecord::Migration
  def change
    create_table :pedidos do |t|
      t.date :data
      t.string :situacao
      t.references :cliente, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

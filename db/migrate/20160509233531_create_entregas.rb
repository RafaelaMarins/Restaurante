class CreateEntregas < ActiveRecord::Migration
  def change
    create_table :entregas do |t|
      t.string :data
      t.string :situacao
      t.references :Pedido, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

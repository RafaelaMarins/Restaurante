class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.string :cpf
      t.string :endereco
      t.string :numero
      t.string :cidade
      t.string :estado
      t.string :email

      t.timestamps null: false
    end
  end
end

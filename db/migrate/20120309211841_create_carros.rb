class CreateCarros < ActiveRecord::Migration
  def change
    create_table :carros do |t|
      t.string :nome
      t.string :descricao
      t.float :preco
      t.integer :prioridade

      t.timestamps
    end
  end
end

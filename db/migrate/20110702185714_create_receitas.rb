class CreateReceitas < ActiveRecord::Migration
  def self.up
    create_table :receitas do |t|
      t.string :titulo
      t.string :autor
      t.text :ingredientes
      t.text :modo
      t.text :observacoes

      t.timestamps
    end
  end

  def self.down
    drop_table :receitas
  end
end

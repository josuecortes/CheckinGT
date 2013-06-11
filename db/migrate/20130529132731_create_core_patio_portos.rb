class CreateCorePatioPortos < ActiveRecord::Migration
  def change
    create_table :core_patio_portos do |t|
      t.integer :empresa_id
      t.string :descricao
      t.string :endereco

      t.timestamps
    end
  end
end

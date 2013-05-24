class CreateCorePortos < ActiveRecord::Migration
  def change
    create_table :core_portos do |t|
      t.integer :empresa_id
      t.string :regsitro_imovel
      t.string :endereco
      t.integer :uf_id
      t.string :cidade
      t.boolean :status

      t.timestamps
    end
  end
end

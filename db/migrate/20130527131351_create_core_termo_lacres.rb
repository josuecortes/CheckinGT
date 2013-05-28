class CreateCoreTermoLacres < ActiveRecord::Migration
  def change
    create_table :core_termo_lacres do |t|
      t.integer :dad_id
      t.integer :unidade_carga_id
      t.integer :fisco_cpf_id
      t.datetime :termo_lacre_data
      t.string :termo_lacre_numero
      t.string :observacoes

      t.timestamps
    end
  end
end

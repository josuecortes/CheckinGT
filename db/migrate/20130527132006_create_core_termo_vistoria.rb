class CreateCoreTermoVistoria < ActiveRecord::Migration
  def change
    create_table :core_termo_vistoria do |t|
      t.integer :dad_id
      t.integer :unidade_carga_id
      t.datetime :termo_vistoria_data_inicio
      t.datetime :termo_vistoria_data_final
      t.string :observacoes
      t.string :termo_contagem

      t.timestamps
    end
  end
end

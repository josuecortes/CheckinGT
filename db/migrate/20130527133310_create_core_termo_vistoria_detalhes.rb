class CreateCoreTermoVistoriaDetalhes < ActiveRecord::Migration
  def change
    create_table :core_termo_vistoria_detalhes do |t|
      t.integer :termo_vistoria_id
      t.integer :termo_vistoria_tipo_detalhe_id
      t.decimal :valor_devido, :precision => 14, :scale => 2
      t.text :observacoes
      

      t.timestamps
    end
  end
end

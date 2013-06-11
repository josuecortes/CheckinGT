class CreateAquaviarioUnidadeCargas < ActiveRecord::Migration
  def change
    create_table :aquaviario_unidade_cargas do |t|
      t.integer :dad_id
      t.integer :tipo_unidade_id
      t.string :placa
      t.integer :termo_lacre_id
      t.integer :termo_vistoria_id
      t.integer :termo_fd_id
      t.integer :termo_fd_data
      t.integer :status_unidade_carga_id
      t.datetime :status_unidade_carga_data
      t.integer :status_processamento_id
      t.datetime :status_processamento_data
      t.integer :status_desembaraco_id
      t.datetime :status_desembaraco_data
      t.integer :usuario_alterou_id
      t.integer :usuario_id

      t.timestamps
    end
  end
end

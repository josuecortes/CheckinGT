class CreateCoreTermoFielDepositarios < ActiveRecord::Migration
  def change
    create_table :core_termo_fiel_depositarios do |t|
      t.integer :rodoviario_id
      t.integer :rodoviario_usuario_id
      t.datetime :rodoviario_data_autorizacao
      t.integer :fisco_usuario_id
      t.datetime :fisco_data_autorizacao
      t.integer :porto_usuario_id
      t.datetime :porto_data_autorizacao
      t.integer :status_termo_fiel_depositario_id
      t.integer :fisco_fechamento_usuario_id
      t.text :fechamento_descricao
      t.datetime :fechamento_data

      t.timestamps
    end
  end
end

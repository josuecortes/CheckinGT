class CreateAquaviarioDads < ActiveRecord::Migration
  def change
    create_table :aquaviario_dads do |t|
      t.integer :empresa_id
      t.string :porto_origem
      t.integer :porto_destino_id
      t.string :empurrador
      t.string :balsa
      t.datetime :previsao_chegada
      t.datetime :efetiva_chegada
      t.integer :usuario_id
      t.integer :usuario_alterou_id

      t.timestamps
    end
  end
end

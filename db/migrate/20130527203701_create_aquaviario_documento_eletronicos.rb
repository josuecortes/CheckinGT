class CreateAquaviarioDocumentoEletronicos < ActiveRecord::Migration
  def change
    create_table :aquaviario_documento_eletronicos do |t|
      t.integer :dad_id
      t.integer :unidade_carga_id
      t.integer :tipo_documento_eletronico_id
      t.integer :rodoviario_id
      t.string :documento
      t.integer :usuario_id

      t.timestamps
    end
  end
end

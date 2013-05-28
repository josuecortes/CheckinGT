class CreateCoreTipoDocumentoEletronicos < ActiveRecord::Migration
  def change
    create_table :core_tipo_documento_eletronicos do |t|
      t.string :descricao

      t.timestamps
    end
  end
end

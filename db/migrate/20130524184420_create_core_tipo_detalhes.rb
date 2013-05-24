class CreateCoreTipoDetalhes < ActiveRecord::Migration
  def change
    create_table :core_tipo_detalhes do |t|
      t.string :descricao

      t.timestamps
    end
  end
end

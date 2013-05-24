class CreateCoreTipoEventos < ActiveRecord::Migration
  def change
    create_table :core_tipo_eventos do |t|
      t.string :descricao

      t.timestamps
    end
  end
end

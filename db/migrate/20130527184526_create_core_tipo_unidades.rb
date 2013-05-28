class CreateCoreTipoUnidades < ActiveRecord::Migration
  def change
    create_table :core_tipo_unidades do |t|
      t.string :descricao

      t.timestamps
    end
  end
end

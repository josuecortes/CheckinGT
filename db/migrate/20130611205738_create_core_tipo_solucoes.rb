class CreateCoreTipoSolucoes < ActiveRecord::Migration
  def change
    create_table :core_tipo_solucoes do |t|
      t.string :descricao

      t.timestamps
    end
  end
end

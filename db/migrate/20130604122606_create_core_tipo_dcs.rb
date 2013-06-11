class CreateCoreTipoDcs < ActiveRecord::Migration
  def change
    create_table :core_tipo_dcs do |t|
      t.string :descricao

      t.timestamps
    end
  end
end

class CreateCoreStatusParametrizacaos < ActiveRecord::Migration
  def change
    create_table :core_status_parametrizacaos do |t|
      t.string :descricao

      t.timestamps
    end
  end
end

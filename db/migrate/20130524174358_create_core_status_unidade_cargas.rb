class CreateCoreStatusUnidadeCargas < ActiveRecord::Migration
  def change
    create_table :core_status_unidade_cargas do |t|
      t.string :descricao

      t.timestamps
    end
  end
end

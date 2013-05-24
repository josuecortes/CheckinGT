class CreateCoreStatusProcessamentos < ActiveRecord::Migration
  def change
    create_table :core_status_processamentos do |t|
      t.string :descricao

      t.timestamps
    end
  end
end

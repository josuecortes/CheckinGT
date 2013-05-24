class CreateCoreStatusDesembaracos < ActiveRecord::Migration
  def change
    create_table :core_status_desembaracos do |t|
      t.string :descricao

      t.timestamps
    end
  end
end

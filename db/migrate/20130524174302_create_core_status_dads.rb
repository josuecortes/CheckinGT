class CreateCoreStatusDads < ActiveRecord::Migration
  def change
    create_table :core_status_dads do |t|
      t.string :descricao

      t.timestamps
    end
  end
end

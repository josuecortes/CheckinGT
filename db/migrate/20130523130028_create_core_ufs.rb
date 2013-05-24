class CreateCoreUfs < ActiveRecord::Migration
  def change
    create_table :core_ufs do |t|
      t.string :sigla

      t.timestamps
    end
  end
end

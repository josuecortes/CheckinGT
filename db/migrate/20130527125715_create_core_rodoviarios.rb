class CreateCoreRodoviarios < ActiveRecord::Migration
  def change
    create_table :core_rodoviarios do |t|
      t.integer :empresa_id
      t.string :registro_antt
      t.boolean :status

      t.timestamps
    end
  end
end

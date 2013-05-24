class CreateCoreAquaviarios < ActiveRecord::Migration
  def change
    create_table :core_aquaviarios do |t|
      t.string :empresa_id
      t.string :registro_antaq
      t.boolean :status, :default=>true

      t.timestamps
    end
  end
end

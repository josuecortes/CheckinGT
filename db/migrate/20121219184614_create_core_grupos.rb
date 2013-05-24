class CreateCoreGrupos < ActiveRecord::Migration
  def change
    create_table :core_grupos do |t|
      t.string :nome
      t.string :sigla
      t.boolean :status, :default=>true

      t.integer :empresa_id

      t.timestamps
    end
  end
end

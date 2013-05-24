class CreateCoreEmpresaModulos < ActiveRecord::Migration
  def change
    create_table :core_empresa_modulos do |t|
      t.integer :empresa_id
      t.integer :modulo_id
      t.boolean :status, :default=>true

      t.timestamps
    end
  end
end

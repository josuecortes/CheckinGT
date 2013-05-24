class CreateCoreEmpresas < ActiveRecord::Migration
  def change
    create_table :core_empresas do |t|
      t.string :cnpj
      t.string :inscricao_estadual
      t.string :descricao
      t.string :endereco
      t.integer :uf_id
      t.string :cidade
      t.boolean :status, :default=>true

      t.timestamps
    end
  end
end

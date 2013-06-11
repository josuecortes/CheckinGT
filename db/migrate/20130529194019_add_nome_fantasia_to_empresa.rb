class AddNomeFantasiaToEmpresa < ActiveRecord::Migration
  def change
    add_column :core_empresas, :nome_fantasia, :string
  end
end

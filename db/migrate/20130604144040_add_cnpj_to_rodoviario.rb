class AddCnpjToRodoviario < ActiveRecord::Migration
  def change
    add_column :core_rodoviarios, :cnpj, :string
  end
end

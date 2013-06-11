class AddDataParametrizacaoToUnidadeCarga < ActiveRecord::Migration
  def change
    add_column :aquaviario_unidade_cargas, :status_parametrizacao_data, :datetime
    add_column :aquaviario_unidade_cargas, :status_parametrizacao_id, :integer
  end
end

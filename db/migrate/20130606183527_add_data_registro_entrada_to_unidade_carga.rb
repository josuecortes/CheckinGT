class AddDataRegistroEntradaToUnidadeCarga < ActiveRecord::Migration
  def change
    add_column :aquaviario_unidade_cargas, :data_registro_entrada, :datetime
  end
end

class AddPortoDestinoIdToUnicadeCarga < ActiveRecord::Migration
  def change
    add_column :aquaviario_unidade_cargas, :porto_destino_id, :integer
  end
end

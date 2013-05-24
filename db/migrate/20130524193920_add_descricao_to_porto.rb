class AddDescricaoToPorto < ActiveRecord::Migration
  def change
    add_column :core_portos, :descricao, :string
  end
end

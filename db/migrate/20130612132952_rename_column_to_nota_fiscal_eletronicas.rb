class RenameColumnToNotaFiscalEletronicas < ActiveRecord::Migration
  def change
    rename_column :core_nota_fiscal_eletronicas, :documento_eletronico_id, :dc_id

    rename_column :core_nota_fiscal_eletronicas, :unidade_carga, :unidade_carga_id

  end
end

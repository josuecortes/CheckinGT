class CreateCoreStatusSeloFiscalTipos < ActiveRecord::Migration
  def change
    create_table :core_status_selo_fiscal_tipos do |t|
      t.string :descricao

      t.timestamps
    end
  end
end

class CreateCoreSeloFiscals < ActiveRecord::Migration
  def change
    create_table :core_selo_fiscals do |t|
      t.integer :status_selo_fiscal_tipo_id
      t.datetime :selo_fiscal_data
      t.string :descricao

      t.timestamps
    end
  end
end

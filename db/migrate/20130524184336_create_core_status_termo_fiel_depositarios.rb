class CreateCoreStatusTermoFielDepositarios < ActiveRecord::Migration
  def change
    create_table :core_status_termo_fiel_depositarios do |t|
      t.string :descricao

      t.timestamps
    end
  end
end

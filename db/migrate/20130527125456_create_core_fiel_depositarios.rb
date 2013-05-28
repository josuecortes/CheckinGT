class CreateCoreFielDepositarios < ActiveRecord::Migration
  def change
    create_table :core_fiel_depositarios do |t|
      t.integer :empresa_id
      t.string :cpf
      t.string :nome

      t.timestamps
    end
  end
end

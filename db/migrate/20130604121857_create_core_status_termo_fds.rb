class CreateCoreStatusTermoFds < ActiveRecord::Migration
  def change
    create_table :core_status_termo_fds do |t|
      t.string :descricao

      t.timestamps
    end
  end
end

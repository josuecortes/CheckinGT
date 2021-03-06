class CreateCoreUsuarios < ActiveRecord::Migration
  def change
    create_table :core_usuarios do |t|
      t.string :nome
      t.string :login
      t.string :email
      t.boolean :status, :default=>true
      t.boolean :mudarsenha, :default=>true

      t.integer :numlogin
      t.datetime :ultimadataacesso
      t.datetime :correntedatalogin
      t.datetime :ultimadatalogin
      t.string :correnteloginip
      t.string :ultimologinip

      t.integer :empresa_id
      t.string :cpf
      t.boolean :master

      t.timestamps 
    end
		
  end
end

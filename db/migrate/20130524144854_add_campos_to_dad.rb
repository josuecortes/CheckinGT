class AddCamposToDad < ActiveRecord::Migration
  def change
  
  	add_column :aquaviario_dads, :status_dad_id, :integer
  	add_column :aquaviario_dads, :status_processamento_id, :integer
  	
  	add_column :aquaviario_dads, :status_dad_data, :datetime
  	add_column :aquaviario_dads, :status_processamento_data, :datetime
  	
  
  end
end

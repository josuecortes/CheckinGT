class Aquaviario::Dad < ActiveRecord::Base
  attr_accessible :balsa, :efetiva_chegada, :empresa_id, :empurrador, :porto_destino_id, 
  								:porto_origem, :previsao_chegada, :usuario_alterou_id, :usuario_id, 
  								:status_dad_id,	:status_processamento_id, :status_dad_data,	:status_processamento_data
    
  
  belongs_to :empresa, :class_name=>"Core::Empresa"
  belongs_to :usuario, :class_name=>"Core::Usuario"
  belongs_to :porto_destino, :foreign_key=>"porto_destino_id", :class_name=>"Core::Porto"
  belongs_to :usuario_alterou, :foreign_key=>"usuario_alterou_id", :class_name=>"Core::Usuario"
  belongs_to :status_processamento, :class_name=>"Core::StatusProcessamento"
  belongs_to :status_dad, :class_name=>"Core::StatusDad"
  has_many :unidade_cargas, :class_name=>"Aquaviario::UnidadeCarga"
  
  
  scope :da_empresa, lambda {|id| {:conditions=>['empresa_id = ?', id]}}
  scope :para_empresa, lambda {|id| {:conditions=>['porto_destino_id in (?)', id]}}
  scope :na_condicao, {:conditions=>['status_dad_id != ?', 10000]}
  
  def retificar_tudo
  	self.status_dad_id = 10002
  	self.status_dad_data = DateTime.now
  	self.save
    self.unidade_cargas.each do |un|
    	un.status_unidade_carga_id = 10002
    	un.status_unidade_carga_data = DateTime.now
    	un.save
    	un.dcs.each do |doc|
    		doc.status_dc_id = 10002
    		doc.status_dc_data = DateTime.now
    		doc.save
    	end
    end
  end
  
  def registrar_tudo
  	if self.status_dad_id != 10003
			self.status_dad_id = 10003
			self.status_dad_data = DateTime.now
			self.efetiva_chegada = DateTime.now
			self.save
		  self.unidade_cargas.each do |un|
		  	un.status_unidade_carga_id = 10003
		  	un.status_unidade_carga_data = DateTime.now
		  	un.data_registro_entrada = DateTime.now
		  	un.save
		  	un.dcs.each do |doc|
		  		doc.status_dc_id = 10003
		  		doc.status_dc_data = DateTime.now
		  		doc.save
		  	end
		  end
		end
  end
  
 	def self.search(query)
		if query.present?
			where(['empurrador LIKE :query OR
			balsa LIKE :query OR
			porto_origem LIKE :query', :query => "%#{query}%"])
		else
			scoped
		end
	end

end

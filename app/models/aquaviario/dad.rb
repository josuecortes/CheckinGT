class Aquaviario::Dad < ActiveRecord::Base
  attr_accessible :balsa, :efetiva_chegada, :empresa_id, :empurrador, :porto_destino_id, 
  								:porto_origem, :previsao_chegada, :usuario_alterou_id, :usuario_id, 
  								:status_dad_id,	:status_processamento_id, :status_dad_data,	:status_processamento_data
    
  
  belongs_to :empresa, :class_name=>"Core::Empresa"
  belongs_to :usuario, :class_name=>"Core_Usuario"
  belongs_to :porto_destino, :foreign_key=>"porto_destino_id", :class_name=>"Core::Porto"
  belongs_to :usuario_alterou, :foreign_key=>"usuario_alterou_id", :class_name=>"Core::Usuario"
  belongs_to :status_processamento, :class_name=>"Core::StatusProcessamento"
  belongs_to :status_dad, :class_name=>"Core::StatusDad"
  has_many :unidade_cargas, :class_name=>"Aquaviario::UnidadeCarga"
  
  
  scope :da_empresa, lambda {|id| {:conditions=>['empresa_id = ?', id]}}
  
end

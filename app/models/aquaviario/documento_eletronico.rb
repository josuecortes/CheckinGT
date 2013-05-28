class Aquaviario::DocumentoEletronico < ActiveRecord::Base
  attr_accessible :dad_id, :documento, :rodoviario_id, :tipo_documento_eletronico_id, 
  								:unidade_carga_id, :usuario_id
  								
  belongs_to :dad, :class_name=>"Aquaviario::Dad"
  belongs_to :rodoviario, :class_name=>"Core::Rodoviario"
  belongs_to :tipo_documento_eletronico, :class_name=>"Core::TipoDocumentoEletronico"								
  belongs_to :unidade_carga, :class_name=>"Aquaviario::UnidadeCarga"
  belongs_to :usuario, :class_name=>"Core::Usuario"    
  
  
end

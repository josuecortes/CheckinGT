class Aquaviario::UnidadeCarga < ActiveRecord::Base
  attr_accessible :dad_id, :placa, :status_desembaraco_data, :status_desembaraco_id, 
  								:status_processamento_data, :status_processamento_id, :status_unidade_carga_data, 
  								:status_unidade_carga_id, :termo_fiel_depositario_data, :termo_fiel_depositario_id, 
  								:termo_lacre_id, :termo_vistoria_id, :tipo_unidade_id, :usuario_alterou_id, 
  								:usuario_id
  								
  belongs_to :dad, :class_name=>"Aquaviario::Dad"
  belongs_to :status_desembaraco, :class_name=>"Core::StatusDesembaraco"
  belongs_to :status_processamento, :class_name=>"Core::StatusProcessamento"
  belongs_to :status_unidade_carga, :class_name=>"Core::StatusUnidadeCarga"
  belongs_to :termo_fiel_depositario, :class_name=>"COre::TermoFIelDepositario"
  belongs_to :termo_lacre, :class_name=>"Core::TermoLacre"
  belongs_to :termo_vistoria, :class_name=>"Core::TermoVistoria"
  belongs_to :tipo_unidade, :class_name=>"Core::TipoUnidade"
  belongs_to :usuario, :class_name=>"Core::Usuario"
  belongs_to :usuario_alterou, :foreign_key=>"usuario_alterou_id", :class_name=>"Core::Usuario"
  has_many :documento_eletronicos, :class_name=>"Aquaviario::DocumentoEletronico"
  
end



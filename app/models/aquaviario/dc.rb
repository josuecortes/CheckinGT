class Aquaviario::Dc < ActiveRecord::Base
  attr_accessible :dad_id, :documento, :rodoviario_id, :tipo_dc_id, :unidade_carga_id, :usuario_id,
  								:status_dc_id, :status_dc_data, :usuario_alterou_id

  belongs_to :dad, :class_name=>"Aquaviario::Dad"
  belongs_to :rodoviario, :class_name=>"Core::Rodoviario"
  belongs_to :tipo_dc, :class_name=>"Core::TipoDc"
  belongs_to :unidade_carga, :class_name=>"Aquaviario::UnidadeCarga"
  belongs_to :usuario, :class_name=>"Core::Usuario"
  has_many  :nota_fiscal_eletronicas, :class_name=>"Core::NotaFiscalEletronica"

end

class Core::TermoVistoriaDetalhe < ActiveRecord::Base
  attr_accessible :observacoes, :termo_vistoria_id, :termo_vistoria_tipo_detalhe_id, :valor_devido
end

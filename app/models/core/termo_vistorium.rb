class Core::TermoVistorium < ActiveRecord::Base
  attr_accessible :dad_id, :observacoes, :termo_contagem, :termo_vistoria_data_final, :termo_vistoria_data_inicio, :unidade_carga_id
end

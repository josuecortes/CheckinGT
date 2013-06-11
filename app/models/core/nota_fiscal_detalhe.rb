class Core::NotaFiscalDetalhe < ActiveRecord::Base
  attr_accessible :dad_id, :documento_eletronico_id, :evento_descricao, :evento_valor, :nota_fiscal_eletronica_id, :solucao_data, :solucao_descricao, :solucao_evento_tipo_id, :tipo_documento_eletronico_id, :tipo_evento_id, :unidade_carga_id, :usuario_fisco_cpf_id
end

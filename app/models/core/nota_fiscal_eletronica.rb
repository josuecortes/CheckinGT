class Core::NotaFiscalEletronica < ActiveRecord::Base
  attr_accessible :dad_id, :data_emissao, :data_registro, :destinatario_cnpj,
  								:destinatario_cpf, :destinatario_nome, :destinatario_razao,
  								:dc_id, :emitente_cnpj, :emitente_razao, :memoria_calculo,
  								:nota_numero, :nota_quantidade_itens, :nota_serie, :rodoviario_id,
  								:selo_fiscal_id, :status_desembaraco_data, :status_desembaraco_id,
  								:termo_fiel_depositario_id, :termo_lacre_id, :termo_vistoria,
  								:tipo_documento_eletronico_id, :unidade_carga_id, :usuario_alterou_id,
  								:usuario_id, :valor_icms, :valor_icms_st, :valor_nota, :valor_produtos,
  								:chnfe

  belongs_to :dc, :class_name=>"Aquaviario::Dc"
  belongs_to :unidade_carga, :class_name=>"Aquaviario::UnidadeCarga"
  belongs_to :dad, :class_name=>"Aquaviario::Dad"

  scope :do_rodoviario, lambda {|id| {:conditions=>['core_nota_fiscal_eletronicas.rodoviario_id = ?', id]}}


end
class Aquaviario::UnidadeCarga < ActiveRecord::Base
  attr_accessible :dad_id, :placa, :status_desembaraco_data, :status_desembaraco_id,
  								:status_processamento_data, :status_processamento_id, :status_unidade_carga_data,
  								:status_unidade_carga_id, :termo_fd_data, :termo_fd_id,
  								:termo_lacre_id, :termo_vistoria_id, :tipo_unidade_id, :usuario_alterou_id,
  								:usuario_id, :porto_destino_id, :data_registro_entrada,
  								:status_parametrizacao_id, :status_parametrizacao_data

  belongs_to :dad, :class_name=>"Aquaviario::Dad"
  belongs_to :status_desembaraco, :class_name=>"Core::StatusDesembaraco"
  belongs_to :status_processamento, :class_name=>"Core::StatusProcessamento"
  belongs_to :status_unidade_carga, :class_name=>"Core::StatusUnidadeCarga"
  belongs_to :termo_fiel_depositario, :class_name=>"Core::TermoFielDepositario"
  belongs_to :termo_lacre, :class_name=>"Core::TermoLacre"
  belongs_to :termo_vistoria, :class_name=>"Core::TermoVistoria"
  belongs_to :tipo_unidade, :class_name=>"Core::TipoUnidade"
  belongs_to :usuario, :class_name=>"Core::Usuario"
  belongs_to :status_parametrizacao, :class_name=>"Core::StatusParametrizacao"
  belongs_to :usuario_alterou, :foreign_key=>"usuario_alterou_id", :class_name=>"Core::Usuario"
  has_many :dcs, :class_name=>"Aquaviario::Dc"
  belongs_to :porto_destino, :foreign_key=>"porto_destino_id", :class_name=>"Core::Porto"

  has_many :nota_fiscal_eletronicas, :through=>:dcs, :class_name=>"Core::NotaFiscalEletronica"

  #scopo porto
  scope :para_empresa, lambda {|id| {:conditions=>['aquaviario_unidade_cargas.porto_destino_id in (?)', id]}}
  scope :na_condicao, joins(:dad).where('aquaviario_dads.status_dad_id = ?', 10003)

  #scopo rodoviario
  #scope :para_rodoviario, joins(:dcs).where('aquaviario_dcs.rodoviario_id = ?', id)
  scope :para_rodoviario, lambda {|id| joins(:dcs).where('aquaviario_dcs.rodoviario_id = ?', id)}

	def registrar_tudo
		  	self.dcs.each do |doc|
		  		doc.status_dc_id = 10003
		  		doc.status_dc_data = DateTime.now
		  		doc.save
		  	end
  end

  def self.search(query)
		if query.present?
			where(['placa LIKE :query', :query => "%#{query}%"])
		else
			scoped
		end
	end

end



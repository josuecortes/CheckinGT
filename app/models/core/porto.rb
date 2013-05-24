class Core::Porto < ActiveRecord::Base
  attr_accessible :cidade, :empresa_id, :endereco, :regsitro_imovel, :status, :uf_id, :descricao
  
  belongs_to :empresa, :class_name=>"Core::Empresa"
  belongs_to :uf, :class_name=>"Core::Uf"
  has_many :dads, :class_name=>"Aquaviario::Dad"
  
end

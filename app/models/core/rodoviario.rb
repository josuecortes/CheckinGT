class Core::Rodoviario < ActiveRecord::Base
  attr_accessible :empresa_id, :registro_antt, :status
  
  belongs_to :empresa, :class_name=>"Core::Empresa"
  has_many :documento_eletronicos, :class_name=>"Aquaviario::DocumentoEletronico"
end

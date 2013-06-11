class Core::Rodoviario < ActiveRecord::Base
  attr_accessible :empresa_id, :registro_antt, :cnpj, :status
  
  belongs_to :empresa, :class_name=>"Core::Empresa"
  has_many :dcs, :class_name=>"Aquaviario::Dc"
end

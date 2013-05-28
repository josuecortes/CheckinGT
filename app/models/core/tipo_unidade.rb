class Core::TipoUnidade < ActiveRecord::Base
  attr_accessible :descricao
  
  has_many :unidade_cargas, :class_name=>"Aquaviario::UnidadeCarga"
end

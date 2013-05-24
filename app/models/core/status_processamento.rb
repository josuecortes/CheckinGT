class Core::StatusProcessamento < ActiveRecord::Base
  attr_accessible :descricao
  
  has_many :dads, :class_name=>"Aquaviario::Dad"
end
